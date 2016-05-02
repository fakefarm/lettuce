class CreateLiabilities < ActiveRecord::Migration
  def change
    create_table :liabilities do |t|
      t.integer :starting_balance
      t.string :interest_rate
      t.string :nickname
      t.integer :due_day
      t.boolean :archive
      t.integer :current_balance #TODO after_create put starting_balance as current_balance.
      t.integer :family_id
      t.integer :user_id
      t.boolean :flag
      t.timestamps null: false
    end
    add_index :liabilities, :user_id
    add_index :liabilities, :family_id
  end
end
