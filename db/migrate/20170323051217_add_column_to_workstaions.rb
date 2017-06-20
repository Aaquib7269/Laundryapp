class AddColumnToWorkstaions < ActiveRecord::Migration
  def change
    add_column :workstaions, :is_active, :boolean
  end
end
