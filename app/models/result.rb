class Result < ActiveRecord::Base
  attr_accessible :assessment_id, :percentatge, :student_id
  belongs_to :assessment
  belongs_to :student
end
