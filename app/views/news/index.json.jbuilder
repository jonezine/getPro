json.array!(@news) do |news|
  json.extract! news, :title, :image, :content, :rails, :g, :scaffold, :News, :title, :image, :content
  json.url news_url(news, format: :json)
end
