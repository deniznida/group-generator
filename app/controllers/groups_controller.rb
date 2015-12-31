class GroupsController < ApplicationController

  def index
    @groups = Group.select(:code, :group_type_id).joins(:students).where("cohort_id = '#{params[:cohort]}'").distinct
    @cohort = Cohort.find(params[:cohort])
    @group_type = GroupType.all
  end

  def new
    @cohorts = Cohort.all
    @group_types = GroupType.all
  end

  def edit
  end

  def create
    cohort = Cohort.find(params[:cohort])
    students_objects = cohort.students
    
    students = []
    students_objects.each {|student| students << student}

    student_count = cohort.students.size

    number_of_groups = 0
    people_per_group = 0

    if params[:group_types] == "1" || params[:group_types] == "4"
      number_of_groups = GroupType.table_or_project_group_type_size(student_count)
      people_per_group = 4
    else
      number_of_groups = GroupType.meetup_or_pair_group_type_size(student_count)
      people_per_group = 2
    end
    
    code_suffix = '-' + params[:group_types]
    group_code = params[:group_code] + code_suffix

    Group.generate_groups(params[:group_types], group_code, students, number_of_groups, people_per_group)
    
    @code = group_code
    redirect_to :controller => :code, :action => :index, :id => @code

  end

  def update
  end

  def show
  end

end
