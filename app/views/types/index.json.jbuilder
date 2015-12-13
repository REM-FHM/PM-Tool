json.array!(@types) do |type|
  json.extract! type, :id, :name, :rbs_id
  json.url type_url(type, format: :json)
end
