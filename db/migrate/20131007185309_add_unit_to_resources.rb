class AddUnitToResources < ActiveRecord::Migration
  def change
    add_column :resources, :unit, :string
  end
end
