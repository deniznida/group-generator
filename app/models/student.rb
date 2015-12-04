class Student < ActiveRecord::Base
  belongs_to :cohort
  has_many :student_groups
  has_many :groups, :through => :student_groups

   validates :name, presence: true
end
