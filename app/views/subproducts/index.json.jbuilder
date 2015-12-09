json.array!(@subproducts) do |subproduct|
  json.extract! subproduct, :id, :spName, :spNumber, :pbs_id
  json.url subproduct_url(subproduct, format: :json)
end
