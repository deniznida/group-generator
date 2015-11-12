class StudentGroup < ActiveRecord::Base
  belongs_to :group
  belongs_to :student
end
