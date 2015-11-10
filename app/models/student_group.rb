class StudentGroup < ActiveRecord::Base
  has_many :groups
  has_many :students
end
