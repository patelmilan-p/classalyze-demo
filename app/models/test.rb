class Test < ActiveRecord::Base
  has_many :students, through: :tests_taken
end
