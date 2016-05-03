class CreateHelp < ActiveRecord::Migration
  def change
    create_table :help do |t|
      t.string :title
      t.text :body
      t.string :youtube
      t.string :tags

      t.timestamps null: false
    end
  end
end
