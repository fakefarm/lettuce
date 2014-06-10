class AddStatusToMonths < ActiveRecord::Migration
  def change
    add_column :filer_months, :status, :string
  end
end
