class Course < ActiveRecord::Base
  # acts_as_taggable
  acts_as_taggable_on :units

  def resources_tagged_with_units
    Resource.tagged_with(self.unit_list)
  end

end
