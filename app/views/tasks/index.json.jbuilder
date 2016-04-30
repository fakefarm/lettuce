json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :complete, :archive, :user_id, :family_id
  json.url task_url(task, format: :json)
end
