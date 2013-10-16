class Resource < ActiveRecord::Base
  
  # has_many :courses_resources
  # has_many :courses, :through => :courses_resources

  LEVELS = ["intro", "intermediate", "advanced"]
  RESOURCE_TYPES = ["video", "tutorial", "document", "miscelaneous"]
  
  acts_as_taggable
  acts_as_taggable_on :units, :levels, :resource_types, :costs

  def upcase_unit_list
    self.unit_list.each do |u| 
      u.upcase!
    end
  end

end

