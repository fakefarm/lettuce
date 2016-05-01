class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :name
      t.string :passphrase
      t.integer :creator_id

      t.timestamps null: false
    end
  end
end
