class CreateLiabilities < ActiveRecord::Migration
  def change
    create_table :liabilities do |t|
      t.string :starting_balance
      t.integer :interest_rate
      t.string :nickname
      t.string :bank_name
      t.integer :user_id
      t.integer :family_id

      t.index :user_id
      t.index :family_id


      t.timestamps null: false
    end
  end
end
