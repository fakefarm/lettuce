class CreateFilerComments < ActiveRecord::Migration
  def change
    create_table :filer_comments do |t|
      t.string :body
      t.integer :source_id
      t.integer :user_id

      t.timestamps
    end
  end
end
