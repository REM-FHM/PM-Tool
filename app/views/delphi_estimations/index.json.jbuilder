json.array!(@delphi_estimations) do |delphi_estimation|
  json.extract! delphi_estimation, :id, :p_id
  json.url delphi_estimation_url(delphi_estimation, format: :json)
end
