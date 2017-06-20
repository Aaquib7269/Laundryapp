class AddIsActiveToPayrequests < ActiveRecord::Migration
  def change
    add_column :payrequests, :is_active, :boolean
  end
end
