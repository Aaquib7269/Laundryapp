class AddColumnToDesignations < ActiveRecord::Migration
  def change
    add_column :designations, :is_active, :boolean
  end
end
