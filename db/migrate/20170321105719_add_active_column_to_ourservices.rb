class AddActiveColumnToOurservices < ActiveRecord::Migration
  def change
    add_column :ourservices, :a, :boolean
  end
end
