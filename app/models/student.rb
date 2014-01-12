class Student < ActiveRecord::Base
  belongs_to :classroom
  has_many :tests_taken, class_name: "TestsTaken"
  has_many :tests, through: :tests_taken
end
