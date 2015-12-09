json.array!(@moduls) do |modul|
  json.extract! modul, :id, :mName, :mNumber, :sp_id
  json.url modul_url(modul, format: :json)
end
