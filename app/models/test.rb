class Test < ActiveRecord::Base
  has_many :tests_taken, class_name: "TestsTaken"
  has_many :students, through: :tests_taken
end
