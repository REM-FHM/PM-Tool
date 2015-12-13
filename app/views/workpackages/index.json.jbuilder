json.array!(@workpackages) do |workpackage|
  json.extract! workpackage, :id, :name, :subtask_id
  json.url workpackage_url(workpackage, format: :json)
end
