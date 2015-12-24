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

    last_group = nil

    #create # of groups 
    (1..number_of_groups).each do |i|
      new_group = Group.new
      new_group.group_type_id = group_type_id
      new_group.code = group_code
      new_group.save

      # add x people to current group
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

      last_group = new_group
    end


    min_students = GroupType.min_group_size(group_type_id)
    need_students = min_students - last_group.student_groups.count
    if ( need_students > 0)
      (1..need_students).each do |n|
        group_id = self.first_full_group(group_code, people_per_group)
        student = StudentGroup.where("group_id = '#{group_id}'").first
        student.group_id = last_group.id
        student.save
      end
    else
      #add leftover student(s) to the last group
      student_samples = students.sample(1)
      if student_samples.length > 0
        new_student_group = StudentGroup.new
        new_student_group.group_id = last_group.id
        new_student_group.student_id = student_samples[0].id
        new_student_group.save
      end
    end
    
  end


  def self.first_full_group(group_code, people_per_group)
    StudentGroup.joins(:group).where("code = '#{group_code}'").having("count(student_id)= #{people_per_group}").group(:group_id).count(:student_id).first[0]
  end

end
