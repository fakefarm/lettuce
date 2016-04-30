class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :note_id
      t.string :name
      t.string :phone
      t.string :email
      t.string :website
      t.boolean :archive
      t.integer :user_id
      t.integer :family_id

      t.index :user_id
      t.index :family_id


      t.timestamps null: false
    end
  end
end
