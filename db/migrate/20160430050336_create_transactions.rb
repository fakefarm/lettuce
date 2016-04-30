class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :equity_id
      t.integer :vendor_id
      t.integer :amount
      t.integer :book_id
      t.string :comment

      t.integer :user_id
      t.integer :family_id
      t.boolean :flag

      t.index :user_id
      t.index :family_id


      t.timestamps null: false
    end
  end
end
