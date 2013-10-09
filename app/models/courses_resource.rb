class CoursesResource < ActiveRecord::Base
  belongs_to :resource
  belongs_to :course
end
