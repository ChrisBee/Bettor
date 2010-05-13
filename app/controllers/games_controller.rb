class GamesController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def index
    @group_games = Game.find(:all)
    hobo_index
  end

end
