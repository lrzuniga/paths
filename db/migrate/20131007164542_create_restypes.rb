class CreateRestypes < ActiveRecord::Migration
  def change
    create_table :restypes do |t|
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
