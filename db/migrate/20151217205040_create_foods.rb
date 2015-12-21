class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
  end
end