class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.references :designation, index: true, foreign_key: true
      t.string :branch_name
      t.string :branch_address
      t.bigint :phoneno

      t.timestamps null: false
    end
  end
end
