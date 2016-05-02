class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string  :name
      t.integer :user_id
      t.boolean :delete_account

      t.timestamps null: false
    end
  end
end
