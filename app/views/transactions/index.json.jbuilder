json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :equity_id, :vendor_id, :amount, :book_id, :flag_id, :note_id, :task_id, :comment, :user_id, :family_id
  json.url transaction_url(transaction, format: :json)
end
