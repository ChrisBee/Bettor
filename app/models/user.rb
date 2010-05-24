class User < ActiveRecord::Base

  hobo_user_model # Don't put anything above this

  fields do
    name          :string, :required, :unique
    email_address :email_address, :login => true
    time_zone     :time_zone
    administrator :boolean, :default => false
    timestamps
  end

  has_many        :bets, :accessible => true
  accepts_nested_attributes_for :bets


  # This gives admin rights to the first sign-up.
  # Just remove it if you don't want that
  before_create { |user| user.administrator = true if !Rails.env.test? && count == 0 }
  after_create :create_missing_bets

  def create_missing_bets
    if bets.nil?
      Game.find(:all).each{ |game| Bet.create :game => game, :user => self }
    else
      (Game.find(:all) - bets.map { |b| b.game } ).each{ |game| Bet.create :game => game, :user => self }
    end
  end

  
  # --- Signup lifecycle --- #

  lifecycle do

    state :active, :default => true

    create :signup, :available_to => "Guest",
           :params => [:name, :email_address, :time_zone, :password, :password_confirmation],
           :become => :active
         
    transition :request_password_reset, { :active => :active }, :new_key => true do
      UserMailer.deliver_forgot_password(self, lifecycle.key)
    end

    transition :reset_password, { :active => :active }, :available_to => :key_holder,
               :params => [ :password, :password_confirmation ]

  end
  

  # --- Permissions --- #

  def create_permitted?
    false
  end

  def update_permitted?
    acting_user.administrator? || 
      (acting_user == self && only_changed?(:name, :email_address, :crypted_password,
                                            :current_password, :password, :password_confirmation, :time_zone))
    # Note: crypted_password has attr_protected so although it is permitted to change, it cannot be changed
    # directly from a form submission.
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
