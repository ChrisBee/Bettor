class Group < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name        :string
    description :string
    timestamps
  end

  has_many :teams
  has_many :rankings, :class_name => "GroupRank"
  has_many :candidates, :class_name => "GroupRank" # used for intermediate round teams, links to ranks of first round

  validates_presence_of :name


  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
