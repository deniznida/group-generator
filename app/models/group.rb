class Group < ActiveRecord::Base
  belongs_to :group_type
  has_many :student_groups
  has_many :students, :through => :student_groups

  def self.generate_groups(students, number_of_groups, people_per_group)
    binding.pry
    students_array = students

    while students_array.length > 0
      new_group = Group.new

      sample_group = students_array.sample(people_per_group)
      sample_group.each do |student| 
        students_array.delete student
        new_group.students << student
      end

    end


  end
end
