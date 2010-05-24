class BetsController < ApplicationController

  hobo_model_controller

  auto_actions :none #:write_only, :edit

end
