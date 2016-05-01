class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :body
      t.boolean :archive
      t.integer :expense_id
      t.integer :book_id
      t.integer :equity_id
      t.integer :transaction_id
      t.integer :transfer_id
      t.integer :vendor_id
      t.integer :liability_id
      t.integer :user_id
      t.integer :family_id
      t.boolean :flag
      t.timestamps null: false
    end
    add_index :notes, :user_id
    add_index :notes, :family_id
  end
end
