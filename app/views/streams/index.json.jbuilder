json.array!(@streams) do |stream|
  json.extract! stream, :id, :name, :amount, :estimate, :auto_allocate, :equity_id, :user_id
  json.url stream_url(stream, format: :json)
end
