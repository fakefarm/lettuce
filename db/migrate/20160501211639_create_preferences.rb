class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :name
      t.integer :user_id
      t.boolean :delete_account

      t.timestamps null: false
    end
  end
end
