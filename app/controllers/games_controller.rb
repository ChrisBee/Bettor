class GamesController < ApplicationController

  hobo_model_controller

  auto_actions :all

  before_filter :set_time_zone

  def set_time_zone
    user_tz = @current_user.try.time_zone
    Time.zone = user_tz if user_tz
  end
  # TODO: why does this not work in the application controller itself??


  def index
    group_game_type = GameType.find_by_name('Group');
    @group_games = Game.find(:all, :conditions => {:game_type_id => group_game_type.id})
    hobo_index
  end

end
