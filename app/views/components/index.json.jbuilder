json.array!(@components) do |component|
  json.extract! component, :id, :cName, :cNumber, :m_id
  json.url component_url(component, format: :json)
end
