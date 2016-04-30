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

      t.index :user_id
      t.index :family_id
      t.index :book_id

      t.timestamps null: false
    end
  end
end
