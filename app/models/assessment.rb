class Assessment < ActiveRecord::Base
  attr_accessible :assessment_name
  has_many :results
end
