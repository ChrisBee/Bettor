class GamesController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def index
    group_game_type = GameType.find_by_name('Group');
    @group_games = Game.find(:all, :conditions => {:game_type_id => group_game_type.id})
    hobo_index
  end

end
