json.array!(@resources) do |resource|
  json.extract! resource, :id, :reNumber, :reQualification, :reExperience, :reQuantity, :ro_id
  json.url resource_url(resource, format: :json)
end
