json.array!(@funds) do |fund|
  json.extract! fund, :id, :account_id, :amount, :spend_date, :vendor_id
  json.url fund_url(fund, format: :json)
end
