class Group < ActiveRecord::Base
  belongs_to :group_type
  has_many :student_groups
  has_many :students, :through => :student_groups

  def self.generate_groups(group_type_id, group_code, students, number_of_groups, people_per_group)
    
    from_db = Group.where(code: group_code)

    from_db.each do |record| 
      record.student_groups.each {|sg| sg.delete}
      record.delete 
    end

    # binding.pry
    (1..number_of_groups).each do |i|
      new_group = Group.new
      new_group.group_type_id = group_type_id
      new_group.code = group_code
      new_group.save

      (1..people_per_group).each do |s|
        new_student_group = StudentGroup.new
        new_student_group.group_id = new_group.id
        
        student_samples = students.sample(1) 
        if student_samples.length > 0
          students.delete student_samples[0]
          new_student_group.student_id = student_samples[0].id
          new_student_group.save
        end
      end

      need_students = 3 - new_group.student_groups.count

      (0..need_students).each do |n|
        
      end

    end
    
  end
end
