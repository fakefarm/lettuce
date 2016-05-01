class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :complete
      t.boolean :archive
      t.integer :expense_id
      t.integer :book_id
      t.integer :equity_id
      t.integer :spend_id
      t.integer :transfer_id
      t.integer :vendor_id
      t.integer :liability_id
      t.integer :user_id
      t.integer :family_id
      t.boolean :flag
      t.timestamps null: false
    end
    add_index :tasks, :user_id
    add_index :tasks, :family_id
  end
end
