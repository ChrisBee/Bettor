class GameType < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name        :string
    description :string
    timestamps
  end

  has_many :games

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
