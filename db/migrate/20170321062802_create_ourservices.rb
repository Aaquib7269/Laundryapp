class CreateOurservices < ActiveRecord::Migration
  def change
    create_table :ourservices do |t|
      t.string :service_type
      t.integer :cost

      t.timestamps null: false
    end
  end
end
