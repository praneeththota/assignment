class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :student_id
      t.integer :assessment_id
      t.integer :percentatge

      t.timestamps
    end
  end
end
