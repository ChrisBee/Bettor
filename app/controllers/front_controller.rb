class FrontController < ApplicationController

  hobo_controller

  before_filter :set_time_zone

  def set_time_zone
    utz = @current_user.try.time_zone
    Time.zone = utz if utz
  end
  # TODO: http://mad.ly/2008/04/09/rails-21-time-zone-support-an-overview/
  # TODO: why does this not work in the application controller itself??

  def index
#    @bets = Bet.find(:all)
    @thebets = Bet.find(:all)
  end

  def summary
    if !current_user.administrator?
      redirect_to user_login_path
    end
  end

  def search
    if params[:query]
      site_search(params[:query])
    end
  end

end
