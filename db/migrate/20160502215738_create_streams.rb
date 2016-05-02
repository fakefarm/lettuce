class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.string :name
      t.integer :amount
      t.boolean :estimate
      t.boolean :auto_allocate
      t.integer :equity_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
