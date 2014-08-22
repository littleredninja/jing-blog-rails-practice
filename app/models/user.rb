class User < ActiveRecord::Base
	has_many :posts, foreign_key: :author_id
	has_many :favorite_posts
	has_many :favorited_posts, through: :favorite_posts, source: :post

	has_secure_password
end
