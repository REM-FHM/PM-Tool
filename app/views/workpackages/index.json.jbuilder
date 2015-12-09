json.array!(@workpackages) do |workpackage|
  json.extract! workpackage, :id, :wpNumber, :wpName, :st_id
  json.url workpackage_url(workpackage, format: :json)
end
