json.array!(@profit_loss_statements) do |profit_loss_statement|
  json.extract! profit_loss_statement, :id, :timeline, :user_id
  json.url profit_loss_statement_url(profit_loss_statement, format: :json)
end
