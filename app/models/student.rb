class Student < ActiveRecord::Base
  belongs_to :classroom
  has_many :tests, through: :tests_taken
end
