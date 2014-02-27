class Claass < ActiveRecord::Base
  attr_accessible :class_name
  has_many :sections, dependent: :destroy
end
