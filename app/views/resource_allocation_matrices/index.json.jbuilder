json.array!(@resource_allocation_matrices) do |resource_allocation_matrix|
  json.extract! resource_allocation_matrix, :id, :p_id
  json.url resource_allocation_matrix_url(resource_allocation_matrix, format: :json)
end
