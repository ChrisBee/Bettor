class UsersController < ApplicationController

  hobo_user_controller

  auto_actions :all, :except => [ :index, :new, :create ]

  show_action :create_missing_bets

  before_filter :set_time_zone

  def set_time_zone
    user_tz = @current_user.try.time_zone
    Time.zone = user_tz if user_tz
  end
  # TODO: why does this not work in the application controller itself??


  def create_missing_bets
    @user = find_instance
    @user.create_missing_bets
    redirect_to :controller => "front", :action => "index"
  end

  def update
    if params[:page_path] == "front/index"
      @user = find_instance
      @user.update_attributes params[:user]
      redirect_to :controller => "front", :action => "index"
    else
      hobo_update
    end
  end

end
