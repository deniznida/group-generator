class CohortsController < ApplicationController

  def index
    @cohorts = Cohort.all
    @cohort = Cohort.new
  end

  def show
    @cohort = Cohort.find(params[:id])
    @students = @cohort.students.order('name')
    @group_types = GroupType.all
  end

  def edit
  end

  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      flash[:message] = "Cohort successfully created!"
      @cohort.create_or_update_user_from_csv(cohort_params[:roster_csv])
    else
      flash[:message] = @cohort.errors.full_messages.to_sentence
    end
    redirect_to(:back)
  end

  private
    def cohort_params
      params.require(:cohort).permit(:name, :roster_csv)
    end

end
