class AddDocumentsToFilerSources < ActiveRecord::Migration
  def change
    add_column :filer_sources, :document, :string
  end
end
