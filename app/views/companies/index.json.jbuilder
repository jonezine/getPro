json.array!(@companies) do |company|
  json.extract! company, :name, :description, :year_founded, :location
  json.url company_url(company, format: :json)
end
