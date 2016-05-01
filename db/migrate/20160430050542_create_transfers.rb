class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.integer :equity_id
      t.integer :liability_id
      t.integer :amount
      t.boolean :archive
      t.integer :user_id
      t.integer :family_id
      t.boolean :flag
      t.timestamps null: false
    end
    add_index :transfers, :family_id
    add_index :transfers, :user_id
  end
end
