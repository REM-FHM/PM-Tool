json.array!(@estimations) do |estimation|
  json.extract! estimation, :id, :workpackage_id, :duration
  json.url estimation_url(estimation, format: :json)
end
