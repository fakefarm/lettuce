class CreateEquities < ActiveRecord::Migration
  def change
    create_table :equities do |t|
      t.integer :starting_balance
      t.string :nickname
      t.string :bank_name
      t.integer :user_id
      t.integer :family_id
      t.boolean :flag

      t.index :user_id
      t.index :family_id

      t.timestamps null: false
    end
  end
end
