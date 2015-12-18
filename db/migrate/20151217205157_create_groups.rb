class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :guest_count
      t.integer :paid_for
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
