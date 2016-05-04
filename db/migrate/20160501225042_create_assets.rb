class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :equity_id
      t.integer :liability_id
      t.integer :balance
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :assets, :user_id
  end
end
