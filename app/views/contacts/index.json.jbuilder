json.array!(@contacts) do |contact|
  json.extract! contact, :id, :note_id, :name, :phone, :email, :website, :archive, :user_id, :family_id
  json.url contact_url(contact, format: :json)
end
