class CreatePayrequests < ActiveRecord::Migration
  def change
    create_table :payrequests do |t|
      t.date :Date
      t.time :Time
      t.timestamps null: false
    end
  end
end
