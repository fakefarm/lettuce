class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :account_id
      t.integer :vendor_id
      t.integer :amount
      t.integer :book_id
      t.integer :flag_id
      t.integer :note_id
      t.integer :task_id
      t.string :comment
      t.integer :user_id
      t.integer :family_id

      t.timestamps null: false
    end
  end
end
