class TeamsController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => :index
  auto_actions_for :group, [:new, :create]


end
