class Post < ActiveRecord::Base
	belongs_to :author, class_name: "User", foreign_key: :author_id
	has_many :favorite_posts
	has_many :favorites, through: :favorite_posts, source: :user
	has_many :post_tags
	has_many :tags, through: :post_tags
end
