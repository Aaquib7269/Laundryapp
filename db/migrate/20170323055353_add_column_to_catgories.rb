class AddColumnToCatgories < ActiveRecord::Migration
  def change
    add_column :catgories, :is_active, :boolean
  end
end
