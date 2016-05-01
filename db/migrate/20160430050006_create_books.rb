class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :tag
      t.text :note
      t.boolean :archive
      t.integer :user_id
      t.integer :family_id
      t.boolean :flag
      t.timestamps null: false
    end
    add_index :books, :user_id
    add_index :books, :family_id
  end
end
