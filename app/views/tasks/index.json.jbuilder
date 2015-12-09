json.array!(@tasks) do |task|
  json.extract! task, :id, :tNumber, :tName, :wbs_id
  json.url task_url(task, format: :json)
end
