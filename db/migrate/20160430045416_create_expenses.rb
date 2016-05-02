class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|

      # strings
      t.string :name
      t.string :frequency

      # integers
      t.integer :budget
      t.integer :balance
      t.integer :book_id
      t.integer :user_id
      t.integer :family_id
      t.integer :funding_equity_id # if auto-allocate, then this is the equity it comes from

      # booleans
      t.boolean :archive
      t.boolean :flag
      t.boolean :fixed
      t.boolean :allocate #auto-allocate funding when it's due.


      t.timestamps null: false
    end

    # indexes
    add_index :expenses, :user_id
    add_index :expenses, :family_id
    add_index :expenses, :book_id
  end
end
