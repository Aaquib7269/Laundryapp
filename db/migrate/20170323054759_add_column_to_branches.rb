class AddColumnToBranches < ActiveRecord::Migration
  def change
    add_column :branches, :is_active, :boolean
  end
end
