class AddSectionidToResult < ActiveRecord::Migration
  def change
    add_column :results, :section_id, :integer
  end
end
