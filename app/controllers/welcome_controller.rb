class WelcomeController < ApplicationController
  skip_before_action :require_login

  def index
    if current_user
      redirect_to(cohorts_path)
    end
  end
  
end