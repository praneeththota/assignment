class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :results, :percentatge, :percentage
  end
end
