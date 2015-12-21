class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
    @cohort = @student.cohort
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to(student_path(@student))
  end

  def destroy
    @student = Student.find(params[:id])
    @cohort = @student.cohort
    @student.destroy
    redirect_to(cohort_path(@cohort))
  end

  private
    def student_params
      params.require(:student).permit(:name, :email, :github_username)
    end
  
end
