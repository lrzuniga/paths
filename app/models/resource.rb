class Resource < ActiveRecord::Base

  # acts_as_taggable
  acts_as_taggable_on :units, :levels, :resource_types, :costs

  def upcase_unit_list
    self.unit_list.each do |u| 
      u.upcase!
    end
  end

end

