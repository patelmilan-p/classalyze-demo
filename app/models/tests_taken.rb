class TestsTaken < ActiveRecord::Base
  belongs_to :student
  belongs_to :test
end
