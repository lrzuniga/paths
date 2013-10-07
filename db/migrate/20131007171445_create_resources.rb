class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.text :provider
      t.text :link
      t.integer :duration

      t.timestamps
    end
  end
end
