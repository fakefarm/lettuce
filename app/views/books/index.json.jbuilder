json.array!(@budget_cateogries) do |budget_cateogry|
  json.extract! budget_cateogry, :id, :name, :tag, :note, :user_id, :family_id
  json.url budget_cateogry_url(budget_cateogry, format: :json)
end
