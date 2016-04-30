class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.integer :contact_id
      t.boolean :archive

      t.integer :user_id
      t.integer :family_id
      t.boolean :flag

      t.index :user_id
      t.index :family_id


      t.timestamps null: false
    end
  end
end
