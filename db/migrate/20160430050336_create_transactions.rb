class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :equity_id
      t.integer :vendor_id
      t.integer :amount
      t.integer :expense_id
      t.string :comment
      t.integer :user_id
      t.integer :family_id
      t.boolean :flag
      t.timestamps null: false
    end
    add_index :transactions, :user_id
    add_index :transactions, :family_id
  end
end
