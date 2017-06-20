class CreateEmployes < ActiveRecord::Migration
  def change
    create_table :employes do |t|
      t.references :designation, index: true, foreign_key: true
      t.string :e_name
      t.bigint :e_no
      t.string :e_address
      t.string :e_email

      t.timestamps null: false
    end
  end
end
