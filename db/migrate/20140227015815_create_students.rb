class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :sections_id
      t.string :student_name

      t.timestamps
    end
  end
end
