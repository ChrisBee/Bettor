class Admin::UsersController < Admin::AdminSiteController

  hobo_user_controller

  auto_actions :all  #, :except => [ :index, :new, :create ]

  show_action :create_missing_bets

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

  def set_password_to_admin
    @user = find_instance
    @user.set_password_to_admin
    redirect_to :controller => "front", :action => "index"
  end

end
