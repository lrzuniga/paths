class CreateJoinTableCourseResource < ActiveRecord::Migration
  def change
    create_join_table :courses, :resources do |t|
      # t.index [:course_id, :resource_id]
      # t.index [:resource_id, :course_id]
    end
  end
end
