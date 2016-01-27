json.array!(@milestones) do |milestone|
  json.extract! milestone, :id, :roadmap_id, :component_id, :date
  json.url milestone_url(milestone, format: :json)
end
