class CreateProfitLossStatements < ActiveRecord::Migration
  def change
    create_table :profit_loss_statements do |t|
      t.string :timeline
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
