class Student < ActiveRecord::Base
  attr_accessible :sections_id, :student_name
  belongs_to :section
  has_many :results
end
