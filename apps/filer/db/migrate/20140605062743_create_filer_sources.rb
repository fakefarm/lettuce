class CreateFilerSources < ActiveRecord::Migration
  def change
    create_table :filer_sources do |t|
      t.string :name
      t.string :comments
      t.integer :month_id

      t.timestamps
    end
  end
end
