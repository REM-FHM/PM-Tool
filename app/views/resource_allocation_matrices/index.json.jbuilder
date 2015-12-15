json.array!(@resource_allocation_matrices) do |resource_allocation_matrix|
  json.extract! resource_allocation_matrix, :id, :p_id, :workpackage_id, :component_id, :resource_id
  json.url resource_allocation_matrix_url(resource_allocation_matrix, format: :json)
end
