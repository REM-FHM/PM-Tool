json.array!(@milestones) do |milestone|
  json.extract! milestone, :id, :roadmap_id, :workpackage_id, :endtime
  json.url milestone_url(milestone, format: :json)
end
