class Game < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    short_desc   :string, :name
    tingler_time :datetime
    home_game_role enum_string(:nil, :W, :L)
    away_game_role enum_string(:nil, :W, :L)
    home_score   :integer
    away_score   :integer
    home_points  :integer
    away_points  :integer
    timestamps
  end

  belongs_to :home_team, :class_name => "Team"
  belongs_to :away_team, :class_name => "Team"
  belongs_to :stadium
  belongs_to :game_type

  belongs_to :home_group_rank, :class_name => "GroupRank"
  belongs_to :away_group_rank, :class_name => "GroupRank"

  belongs_to :home_game, :class_name => "Game"
  belongs_to :away_game, :class_name => "Game"

  has_many   :bets

  validates_presence_of :short_desc, :tingler_time, :game_type

#  def name
#    if home_team.nil? || away_team.nil? || tingler_time.nil?
#      "Unknown game " + id.to_s
#    else
#      home_team.name + " - " + away_team.name + " @ " + tingler_time.to_s
#    end
#  end

  def home_team_name
    if !home_team.nil?
      home_team.name
    else
      if !home_group_rank.nil?
        home_group_rank.group.name + home_group_rank.position.to_s
      else
        if !home_game.nil?
          home_game_role + home_game.short_desc
        else
          "Unknown Home Team"
        end
      end
    end
  end

  def away_team_name
    if !away_team.nil?
      away_team.name
    else
      if !away_group_rank.nil?
        away_group_rank.group.name + away_group_rank.position.to_s
      else
        if !away_game.nil?
          away_game_role + away_game.short_desc
        else
          "Unknown Away Team"
        end
      end
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
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
