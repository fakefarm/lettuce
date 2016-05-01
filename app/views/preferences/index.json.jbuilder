json.array!(@preferences) do |preference|
  json.extract! preference, :id, :name, :user_id, :delete_account
  json.url preference_url(preference, format: :json)
end
