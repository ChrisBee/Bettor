class Admin::BetsController < Admin::AdminSiteController

  hobo_model_controller

  auto_actions :all #:write_only, :edit
  auto_actions_for :user, [:new, :create]

  def set_score
    @bet = find_instance
    @bet.home_score = params[:home_score]
    @bet.away_score = params[:away_score]
    @bet.save
  end

end
