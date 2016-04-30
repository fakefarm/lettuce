json.array!(@accounts) do |account|
  json.extract! account, :id, :starting_balance, :nickname, :bank_name, :user_id, :family_id
  json.url account_url(account, format: :json)
end
