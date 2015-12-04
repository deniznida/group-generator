require 'csv'

class Cohort < ActiveRecord::Base
  has_many :students
  has_many :groups, :through => :students

  validates :name, :presence => true, allow_blank:false, :uniqueness => true, length: { maximum: 50 }
  
  attr_writer :roster_csv

  def create_or_update_user_from_csv(file)
    CSV.foreach(file.path, headers: true) do |row|
      @student = Student.find_or_create_by(github_username: row["github_username"]) do |student|
        student.cohort = self
        student.name = "#{row["first_name"]} #{row["last_name"]}"
        student.email = row["email"]
        student.save
      end
    end
  end

  # def create_or_update_user_from_csv(row)
  #   @member = User.where(github_username: row[@github_username_index]).first_or_initialize.tap do |user|
  #     @member_attributes_array.compact.each_with_index do |attribute, index|
  #       user.send(attribute + '=', row[index])
  #     end
  #     user.save
  #   end
  # end

end
