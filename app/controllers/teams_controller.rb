class TeamsController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => :index
  auto_actions_for :group, [:new, :create]

  before_filter :set_time_zone

  def set_time_zone
    user_tz = @current_user.try.time_zone
    Time.zone = user_tz if user_tz
  end
  # TODO: why does this not work in the application controller itself??



end
