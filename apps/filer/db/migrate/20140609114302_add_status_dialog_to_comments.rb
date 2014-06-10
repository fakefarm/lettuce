class AddStatusDialogToComments < ActiveRecord::Migration
  def change
    add_column :filer_comments, :status, :string
    add_column :filer_comments, :dialog, :string
  end
end
