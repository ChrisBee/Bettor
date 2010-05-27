class RankingController < ApplicationController

  hobo_controller

  def index
    @bettors = User.all.sort {|x,y| y.total_points <=> x.total_points }
  end

end
