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

  def new
    @student = Student.new
    @cohort = Cohort.find(params[:cohort])
  end

  def create
    @student = Student.where("github_username = '#{params[:student][:github_username]}'").first 
    if @student != nil
      @student.cohort_id =  params[:cohort]
    else
      @student = Student.new(student_params)
      @student.cohort_id =  params[:cohort]
    end
    
    if @student.save
      flash[:message] = "Student successfully added to this cohort!"
    else
      flash[:message] = @student.errors.full_messages.to_sentence
    end

    redirect_to(@student)
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
