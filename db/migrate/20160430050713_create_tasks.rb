class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :complete
      t.boolean :archive
      t.integer :user_id
      t.integer :family_id

      t.index :user_id
      t.index :family_id


      t.timestamps null: false
    end
  end
end
