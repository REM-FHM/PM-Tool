json.array!(@roadmaps) do |roadmap|
  json.extract! roadmap, :id, :p_id
  json.url roadmap_url(roadmap, format: :json)
end
