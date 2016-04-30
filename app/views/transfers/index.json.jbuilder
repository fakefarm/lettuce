json.array!(@transfers) do |transfer|
  json.extract! transfer, :id, :equity_id, :liability_id, :amount, :note_id, :task_id, :reminder_id, :user_id, :family_id
  json.url transfer_url(transfer, format: :json)
end
