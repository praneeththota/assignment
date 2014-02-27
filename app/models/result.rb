class Result < ActiveRecord::Base
  attr_accessible :assessment_id, :percentage, :student_id, :section_id
  belongs_to :assessment
  belongs_to :student
end
