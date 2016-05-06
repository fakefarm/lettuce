class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :image_url
      t.string :name
      t.date :launch_date
      t.text :summary
      t.integer :investment_time
      t.integer :investment_money
      t.integer :mo_goal
      t.string :project_url
      t.string :business_plan_url
      t.string :vendor_url
      t.string :customer_url

      t.timestamps null: false
    end
  end
end
