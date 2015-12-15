json.array!(@resource_breakdown_structures) do |resource_breakdown_structure|
  json.extract! resource_breakdown_structure, :id, :p_id
  json.url resource_breakdown_structure_url(resource_breakdown_structure, format: :json)
end
