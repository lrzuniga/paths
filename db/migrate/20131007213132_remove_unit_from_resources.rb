class RemoveUnitFromResources < ActiveRecord::Migration
  def change
    remove_column :resources, :unit, :string
  end
end
