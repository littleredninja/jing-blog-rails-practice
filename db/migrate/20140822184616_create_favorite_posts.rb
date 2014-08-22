class CreateFavoritePosts < ActiveRecord::Migration
  def change
    create_table :favorite_posts do |t|
      t.string :user_id
      t.string :post_id

      t.timestamps
    end
  end
end
