class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|

      # strings
      t.string :name

      # integers
      t.integer :budget
      t.integer :balance
      t.integer :book_id
      t.integer :user_id
      t.integer :family_id
      t.integer :equity_id # if auto-allocate, then this is the equity it comes from
      t.integer :allocate_day

      # booleans
      t.boolean :archive
      t.boolean :flag
      t.boolean :required # only check if truly required, like rent, medications, power bills, etc. (few expenses are truly required other than emotionally)
      t.boolean :allocate #auto-allocate funding when it's due.


      t.timestamps null: false
    end

    # indexes
    add_index :expenses, :user_id
    add_index :expenses, :equity_id
    add_index :expenses, :family_id
    add_index :expenses, :book_id
  end
end
