class CreateClaasses < ActiveRecord::Migration
  def change
    create_table :claasses do |t|
      t.string :class_name

      t.timestamps
    end
  end
end
