class CreateCatgories < ActiveRecord::Migration
  def change
    create_table :catgories do |t|
      t.string :category_type

      t.timestamps null: false
    end
  end
end
