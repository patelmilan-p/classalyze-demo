class Classroom < ActiveRecord::Base
  has_many :students, dependent: :destroy
end
