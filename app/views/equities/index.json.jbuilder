json.array!(@equities) do |equity|
  json.extract! equity, :id, :starting_balance, :nickname, :bank_name, :user_id, :family_id
  json.url equity_url(equity, format: :json)
end
