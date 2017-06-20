class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :c_name
      t.bigint :c_phoneno
      t.string :c_email
      t.string :address

      t.timestamps null: false
    end
  end
end
