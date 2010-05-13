class Game < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    home_score   :integer
    away_score :integer
    tingler_time :datetime
    timestamps
  end

  belongs_to :home_team, :class_name => "Team"
  belongs_to :away_team, :class_name => "Team"
  belongs_to :stadium
  belongs_to :game_type

  has_many   :bets

  validates_presence_of :home_team, :away_team

  def name
    if home_team.nil? || away_team.nil? || tingler_time.nil?
      "Unknown game " + id.to_s
    else
      home_team.name + " - " + away_team.name + " @ " + tingler_time.to_s
    end
  end

  def group
#    if !game_type.nil? && game_type.name == "Group"
      home_team.group
#    end
  end


  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator? && (Time.now < tingler_time + 1.day)
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
