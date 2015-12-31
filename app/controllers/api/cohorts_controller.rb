class Api::CohortsController < ApplicationController
  skip_before_filter :require_login 
  respond_to :html, :json

  def index
    @cohorts = Cohort.all

    respond_with(@cohorts)
  end
end