class CreateBalanceSheets < ActiveRecord::Migration
  def change
    create_table :balance_sheets do |t|
      t.string :timeline
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
