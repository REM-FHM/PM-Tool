json.array!(@moduls) do |modul|
  json.extract! modul, :id, :name, :subproduct_id
  json.url modul_url(modul, format: :json)
end
