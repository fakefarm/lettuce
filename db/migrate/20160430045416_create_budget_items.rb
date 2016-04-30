class CreateBudgetItems < ActiveRecord::Migration
  def change
    create_table :budget_items do |t|
      t.string :name
      t.string :frequency
      t.integer :target_price
      t.string :category_id
      t.string :structure
      t.string :reminder_id
      t.integer :user_id
      t.integer :family_id

      t.timestamps null: false
    end
  end
end
