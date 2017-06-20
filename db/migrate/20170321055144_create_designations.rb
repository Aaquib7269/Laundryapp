class CreateDesignations < ActiveRecord::Migration
  def change
    create_table :designations do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
