json.array!(@product_breakdown_structures) do |product_breakdown_structure|
  json.extract! product_breakdown_structure, :id, :p_id
  json.url product_breakdown_structure_url(product_breakdown_structure, format: :json)
end
