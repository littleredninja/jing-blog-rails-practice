json.array!(@favorite_posts) do |favorite_post|
  json.extract! favorite_post, :id, :user_id, :post_id
  json.url favorite_post_url(favorite_post, format: :json)
end
