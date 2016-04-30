json.array!(@liabilities) do |liability|
  json.extract! liability, :id, :starting_balance, :interest_rate, :nickname, :bank_name, :user_id, :family_id
  json.url liability_url(liability, format: :json)
end
