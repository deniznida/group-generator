require 'csv'

class Cohort < ActiveRecord::Base
  has_many :students
  has_many :groups, :through => :students

  validates :name, :presence => true, allow_blank:false, :uniqueness => true, length: { maximum: 50 }
  
  attr_writer :roster_csv

  def create_or_update_user_from_csv(file)
    CSV.foreach(file.path, headers: true) do |row|
    
      if (row["first_name"])
        student = Student.where(github_username: row["github_username"]).first_or_initialize
      
        name = "#{row["first_name"].capitalize} #{row["last_name"].capitalize}"
        email = row["email"]

        student.update(name: name, email: email, cohort_id: self.id)
      end
    end  
  end
end
