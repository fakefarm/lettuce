json.array!(@expenses) do |expense|
  json.extract! expense, :id, :name, :frequency, :budget, :book_id, :fixed, :reminder_id, :user_id, :family_id
  json.url expense_url(expense, format: :json)
end
