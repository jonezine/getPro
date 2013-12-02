json.array!(@messages) do |message|
  json.extract! message, :title, :image, :content
  json.url message_url(message, format: :json)
end
