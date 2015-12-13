json.array!(@resources) do |resource|
  json.extract! resource, :id, :role_id, :qualification, :experience, :quantitiy
  json.url resource_url(resource, format: :json)
end
