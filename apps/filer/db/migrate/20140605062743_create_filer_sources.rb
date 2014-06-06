class CreateFilerSources < ActiveRecord::Migration
  def change
    create_table :filer_sources do |t|
      t.string :name
      t.string :note
      t.string :document
      t.integer :month_id

      t.timestamps
    end
  end
end
