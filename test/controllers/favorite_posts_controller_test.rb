require 'test_helper'

class FavoritePostsControllerTest < ActionController::TestCase
  setup do
    @favorite_post = favorite_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favorite_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favorite_post" do
    assert_difference('FavoritePost.count') do
      post :create, favorite_post: { post_id: @favorite_post.post_id, user_id: @favorite_post.user_id }
    end

    assert_redirected_to favorite_post_path(assigns(:favorite_post))
  end

  test "should show favorite_post" do
    get :show, id: @favorite_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favorite_post
    assert_response :success
  end

  test "should update favorite_post" do
    patch :update, id: @favorite_post, favorite_post: { post_id: @favorite_post.post_id, user_id: @favorite_post.user_id }
    assert_redirected_to favorite_post_path(assigns(:favorite_post))
  end

  test "should destroy favorite_post" do
    assert_difference('FavoritePost.count', -1) do
      delete :destroy, id: @favorite_post
    end

    assert_redirected_to favorite_posts_path
  end
end
