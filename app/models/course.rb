class Course < ActiveRecord::Base

  # has_many :courses_resources
  # has_many :resources, :through => :courses_resources
  
  # acts_as_taggable
  acts_as_taggable_on :units

  def resources_tagged_with_units
    Resource.tagged_with(self.unit_list, :any => true)
  end

end
