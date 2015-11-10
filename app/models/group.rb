class Group < ActiveRecord::Base
  belongs_to :group_type
  has_many :student_groups
  has_many :students, :through => :student_groups
end
