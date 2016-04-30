class CreateBudgetCateogries < ActiveRecord::Migration
  def change
    create_table :budget_cateogries do |t|
      t.string :name
      t.string :tag
      t.text :note
      t.integer :user_id
      t.integer :family_id

      t.timestamps null: false
    end
  end
end
