class Bet < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    home_score   :integer
    away_score :integer
    timestamps
  end

  belongs_to :game
  belongs_to :user

  validates_presence_of :game, :user

  def name
    "Bet Number " + id.to_s
  end

  def home_team_name
    game.home_team.name
  end
  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    (acting_user == user || acting_user.administrator?) && 
      !user.changed? &&
      Time.zone.now <= game._?.tingler_time
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
