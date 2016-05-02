class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :website
      t.boolean :archive
      t.integer :user_id
      t.integer :family_id
      t.boolean :flag
      t.text :comment
      t.timestamps null: false
    end
    add_index :vendors, :user_id
    add_index :vendors, :family_id
  end
end
