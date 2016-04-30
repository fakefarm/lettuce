class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.integer :equity_id
      t.integer :liability_id
      t.string :amount
      t.integer :note_id
      t.integer :task_id
      t.integer :reminder_id
      t.integer :user_id
      t.integer :family_id

      t.timestamps null: false
    end
  end
end
