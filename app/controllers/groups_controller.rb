class GroupsController < ApplicationController

  def new
    @cohorts = Cohort.all
    @group_types = GroupType.all
  end

  def edit

  end

  def create
    cohort = Cohort.find(params[:cohort])
    students = cohort.students
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

    Group.generate_groups(students, number_of_groups, people_per_group)
  end

  def update

  end

end
