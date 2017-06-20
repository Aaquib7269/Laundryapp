class AddEmployeIdToBranches < ActiveRecord::Migration
  def change
    add_column :branches, :employe_id, :integer
  end
end
