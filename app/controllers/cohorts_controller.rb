class CohortsController < ApplicationController

  def index
    @cohorts = Cohort.all
    @cohort = Cohort.new
  end

  def show
    @cohort = Cohort.find(params[:id])
    @students = @cohort.students.order('name')
  end

  def edit
  end

  def create
    @cohort = Cohort.new(cohort_params)
    binding.pry
    if @cohort.save
      binding.pry
      flash[:success] = "Cohort successfully created!"
    else
      binding.pry
      flash[:alert] = @cohort.errors.full_messages.to_sentence
    end
    redirect_to(:back)
  end

  private
    def cohort_params
      params.require(:cohort).permit(:name)
    end

end
