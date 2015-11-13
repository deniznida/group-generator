class GroupType < ActiveRecord::Base
  has_many :groups


# table_group_type = GroupType.create({ name: "Table Group"}) 
# meetup_group_type = GroupType.create({ name: "MeetUp Group"}) 
# pairprogram_group_type = GroupType.create({ name: "PairProgram Group"})
# project_group_type = GroupType.create({ name: "Project Group"})

  def table_or_project_group_type_size(students)
    if students % 4 == 0
      students / 4
    else
      students / 4 + 1 
    end
  end

  def meetup_or_pair_group_type_size(students)
    students / 2
  end
end
