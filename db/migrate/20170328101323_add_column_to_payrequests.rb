class AddColumnToPayrequests < ActiveRecord::Migration
  def change
    add_column :payrequests, :customer_id, :integer
  end
end
