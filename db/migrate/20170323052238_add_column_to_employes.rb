class AddColumnToEmployes < ActiveRecord::Migration
  def change
    add_column :employes, :is_active, :boolean
  end
end
