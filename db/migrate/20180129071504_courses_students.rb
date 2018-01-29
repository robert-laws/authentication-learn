class CoursesStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :courses_students do |t|
      t.belongs_to :course
      t.belongs_to :student
    end
  end
end
