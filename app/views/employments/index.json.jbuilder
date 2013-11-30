json.array!(@employments) do |employment|
  json.extract! employment, :employment
  json.url employment_url(employment, format: :json)
end
