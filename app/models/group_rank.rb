class GroupRank < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    position :integer
    timestamps
  end

  belongs_to :group
  belongs_to :next_group, :class_name => "Group"

  belongs_to :team

  has_many   :home_games, :class_name => "Game", :foreign_key => "home_group_rank_id"
  has_many   :away_games, :class_name => "Game", :foreign_key => "away_group_rank_id"


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
