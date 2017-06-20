class AddEmployeIdToDesignations < ActiveRecord::Migration
  def change
    add_column :designations, :employe_id, :integer
  end
end
