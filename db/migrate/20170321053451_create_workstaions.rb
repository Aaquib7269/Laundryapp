class CreateWorkstaions < ActiveRecord::Migration
  def change
    create_table :workstaions do |t|
      t.string :station_name

      t.timestamps null: false
    end
  end
end
