class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.references :group, index: true, foreign_key: true
      t.references :food, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
