class CreateEquities < ActiveRecord::Migration
  def change
    create_table :equities do |t|
      t.integer :starting_balance
      t.string :nickname
      t.string :bank_name
      t.integer :user_id
      t.integer :family_id
      t.boolean :flag
      t.timestamps null: false
    end
    add_index :equities, :user_id
    add_index :equities, :family_id
  end
end
