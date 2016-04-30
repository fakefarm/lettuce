json.array!(@expenses) do |expense|
  json.extract! expense, :id, :name, :frequency, :target_price, :category_id, :structure, :reminder_id, :user_id, :family_id
  json.url expense_url(expense, format: :json)
end
