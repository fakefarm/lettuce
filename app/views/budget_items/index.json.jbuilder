json.array!(@budget_items) do |budget_item|
  json.extract! budget_item, :id, :name, :frequency, :target_price, :category_id, :structure, :reminder_id, :user_id, :family_id
  json.url budget_item_url(budget_item, format: :json)
end
