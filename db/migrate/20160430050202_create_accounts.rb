class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :starting_balance
      t.string :nickname
      t.string :bank_name
      t.integer :user_id
      t.integer :family_id

      t.timestamps null: false
    end
  end
end
