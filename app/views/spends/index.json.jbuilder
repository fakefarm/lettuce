json.array!(@spends) do |spend|
  json.extract! spend, :id, :equity_id, :vendor_id, :amount, :book_id, :comment, :user_id, :family_id
  json.url spend_url(spend, format: :json)
end
