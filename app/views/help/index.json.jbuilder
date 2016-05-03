json.array!(@help) do |help|
  json.extract! help, :id, :title, :body, :tags
  json.url help_url(help, format: :json)
end
