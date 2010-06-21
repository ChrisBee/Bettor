class Bet < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    home_score   :integer
    away_score   :integer
    points       :integer
    timestamps
  end

  belongs_to :game
  belongs_to :user

  validates_presence_of :game, :user
  validate_on_update :validate_update

  def name
    "Bet Number " + id.to_s
  end

  def home_team_name
    game.home_team.name
  end
  # --- Permissions --- #

  def validate_update
    if home_score_changed? || away_score_changed?
      if Time.zone.now > game.tingler_time
        errors.add_to_base("Tingler time is in the past - don't try to cheat!")
      end
    end
  end

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    (acting_user == user || acting_user.administrator?) && 
      Time.zone.now <= game._?.tingler_time
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
