json.array!(@single_surveys) do |single_survey|
  json.extract! single_survey, :id, :name
  json.url single_survey_url(single_survey, format: :json)
end
