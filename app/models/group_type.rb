class GroupType < ActiveRecord::Base
  has_many :groups

  def self.min_group_size(group_type_id)
    minimun_num_of_students = { 
      "1" => 3,
      "2" => 2,
      "3" => 2,
      "4" => 3
    }
    minimun_num_of_students[group_type_id]
  end


  def self.table_or_project_group_type_size(students)
    if students % 4 == 0
      students / 4
    else
      students / 4 + 1 
    end
  end


  def self.meetup_or_pair_group_type_size(students)
    students / 2
  end

end
