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

      t.index :user_id
      t.index :family_id

      t.timestamps null: false
    end
  end
end
