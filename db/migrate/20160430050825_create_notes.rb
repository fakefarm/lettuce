class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :body
      t.boolean :archive
      t.integer :user_id
      t.integer :family_id

      t.timestamps null: false
    end
  end
end
