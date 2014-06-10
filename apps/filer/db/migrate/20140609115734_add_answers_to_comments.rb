class AddAnswersToComments < ActiveRecord::Migration
  def change
    add_reference :filer_comments, :question, index: true
  end
end
