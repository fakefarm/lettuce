class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.integer :account_id
      t.integer :amount
      t.date :deposit_date
      t.integer :vendor_id
      t.integer :user_id
      t.integer :family_id

      t.timestamps null: false
    end
    add_index :funds, :user_id
    add_index :funds, :family_id
  end
end
