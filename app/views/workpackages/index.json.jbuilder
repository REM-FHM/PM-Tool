json.array!(@workpackages) do |workpackage|
  json.extract! workpackage, :id, :name
  json.url workpackage_url(workpackage, format: :json)
end
