class Group < ActiveRecord::Base
  belongs_to :group_type
  has_many :student_groups
  has_many :students, :through => :student_groups

  def self.generate_groups(students, number_of_groups, people_per_group)
    binding.pry
    shuffled_students_array = students.shuffle 



    while shuffled_students_array.length > 0
      new_group = Group.new
      shuffled_students_array.pluck(people_per_group).each do |person|
        binding.pry
      end

    end


  end
end
