class CreateSpends < ActiveRecord::Migration
  def change
    create_table :spends do |t|
      t.integer :equity_id
      t.integer :vendor_id
      t.integer :amount
      t.integer :expense_id
      t.integer :spend_date
      t.string :comment
      t.integer :user_id
      t.integer :family_id
      t.boolean :flag
      t.boolean :tax
      t.timestamps null: false
    end
    add_index :spends, :user_id
    add_index :spends, :family_id
  end
end
