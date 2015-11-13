class GroupsController < ApplicationController

  def new
    @cohorts = Cohort.all
    @group_types = GroupType.all
  end

  def edit

  end

  def create
    
  end

  def update

  end

end
