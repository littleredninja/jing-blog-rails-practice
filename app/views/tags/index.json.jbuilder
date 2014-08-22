json.array!(@tags) do |tag|
  json.extract! tag, :id, :tag_label
  json.url tag_url(tag, format: :json)
end
