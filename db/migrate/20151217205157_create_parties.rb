class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :guest_count
      t.integer :paid_for
      t.references :employee, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
