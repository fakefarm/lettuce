json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :name, :contact_id, :archive, :user_id, :family_id
  json.url vendor_url(vendor, format: :json)
end
