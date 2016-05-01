class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :frequency
      t.string :structure
      t.integer :target_price
      t.boolean :archive         # TODO create a scope that gets all non-archived expenses.
      t.integer :book_id
      t.integer :user_id
      t.integer :family_id
      t.boolean :flag
      t.timestamps null: false
    end
    add_index :expenses, :user_id
    add_index :expenses, :family_id
    add_index :expenses, :book_id
  end
end
