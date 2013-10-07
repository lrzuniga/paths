class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :restypes, :type, :restype
  end
end

