class Section < ActiveRecord::Base
  attr_accessible :claasses_id, :section_name
  belongs_to :claass
  has_many :students, dependent: :destroy
end
