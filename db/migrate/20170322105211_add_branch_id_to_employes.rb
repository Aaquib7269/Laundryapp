class AddBranchIdToEmployes < ActiveRecord::Migration
  def change
    add_column :employes, :branch_id, :integer
  end
end
