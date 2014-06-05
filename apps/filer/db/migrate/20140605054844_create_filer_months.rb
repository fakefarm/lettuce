class CreateFilerMonths < ActiveRecord::Migration
  def change
    create_table :filer_months do |t|
      t.string :name

      t.timestamps
    end
  end
end
