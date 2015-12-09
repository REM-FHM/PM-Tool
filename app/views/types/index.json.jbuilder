json.array!(@types) do |type|
  json.extract! type, :id, :tNumber, :tName, :rbs_id
  json.url type_url(type, format: :json)
end
