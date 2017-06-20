class AddColumnToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :is_active, :boolean
  end
end
