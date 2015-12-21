class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
    @cohort = @student.cohort
  end

  def new

  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
  end
  
end
