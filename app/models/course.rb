class Course < ActiveRecord::Base
  # has_many :resources
  acts_as_taggable_on :units
end
