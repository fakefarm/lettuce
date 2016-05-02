class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|

      t.string :name
      t.string :tag

      t.text :note

      t.integer :user_id
      t.integer :family_id

      t.date :milestone

      t.boolean :archive
      t.boolean :private
      t.boolean :flag

      t.timestamps null: false
    end
    add_index :books, :user_id
    add_index :books, :family_id
  end
end
