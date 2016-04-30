class CreateLiabilities < ActiveRecord::Migration
  def change
    create_table :liabilities do |t|
      t.integer :starting_balance
      t.string :interest_rate
      t.string :nickname
      t.string :bank_name
      t.boolean :archive
      t.integer :current_balance

      t.integer :user_id
      t.integer :family_id
      t.boolean :flag

      t.index :user_id
      t.index :family_id


      t.timestamps null: false
    end
  end
end
