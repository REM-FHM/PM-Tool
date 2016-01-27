json.array!(@ram_entries) do |ram_entry|
  json.extract! ram_entry, :id, :ram_id, :workpackage_id, :component_id, :resource_id
  json.url ram_entry_url(ram_entry, format: :json)
end
