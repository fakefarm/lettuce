class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|

      # strings
      t.string :name
      t.string :frequency
      t.string :structure

      # integers
      t.integer :target_price
      t.integer :book_id
      t.integer :user_id
      t.integer :family_id

      # booleans
      t.boolean :archive         # TODO create a scope that gets all non-archived expenses.
      t.boolean :flag

      t.timestamps null: false
    end

    # indexes
    add_index :expenses, :user_id
    add_index :expenses, :family_id
    add_index :expenses, :book_id
  end
end
