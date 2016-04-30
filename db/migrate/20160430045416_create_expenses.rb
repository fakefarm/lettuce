class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :frequency
      t.integer :target_price
      t.boolean :archive         # TODO create a scope that gets all non-archived expenses.
      t.integer :book_id
      t.string :structure
      t.string :reminder_id
      t.integer :user_id
      t.integer :family_id

      t.index :book_id
      t.index :user_id
      t.index :family_id

      t.timestamps null: false
    end
  end
end
