json.array!(@estimation_templates) do |estimation_template|
  json.extract! estimation_template, :id, :form_template_id, :workpackage_id, :comment
  json.url estimation_template_url(estimation_template, format: :json)
end
