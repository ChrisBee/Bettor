class Team < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name        :string
    abbreviation :string
    description :string
    timestamps
  end

  belongs_to :group

  has_many :home_games, :class_name => "Game", :foreign_key => "home_team_id"
  has_many :away_games, :class_name => "Game", :foreign_key => "away_team_id"

  has_many :group_ranks

  validates_presence_of :name, :group
  
  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator? && !group.changed?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
