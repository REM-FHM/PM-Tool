json.array!(@work_breakdown_structures) do |work_breakdown_structure|
  json.extract! work_breakdown_structure, :id, :p_id
  json.url work_breakdown_structure_url(work_breakdown_structure, format: :json)
end
