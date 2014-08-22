class FavoritePostsController < ApplicationController
  before_action :set_favorite_post, only: [:show, :edit, :update, :destroy]

  # GET /favorite_posts
  # GET /favorite_posts.json
  def index
    @favorite_posts = FavoritePost.all
  end

  # GET /favorite_posts/1
  # GET /favorite_posts/1.json
  def show
  end

  # GET /favorite_posts/new
  def new
    @favorite_post = FavoritePost.new
  end

  # GET /favorite_posts/1/edit
  def edit
  end

  # POST /favorite_posts
  # POST /favorite_posts.json
  def create
    @favorite_post = FavoritePost.new(favorite_post_params)

    respond_to do |format|
      if @favorite_post.save
        format.html { redirect_to @favorite_post, notice: 'Favorite post was successfully created.' }
        format.json { render :show, status: :created, location: @favorite_post }
      else
        format.html { render :new }
        format.json { render json: @favorite_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_posts/1
  # PATCH/PUT /favorite_posts/1.json
  def update
    respond_to do |format|
      if @favorite_post.update(favorite_post_params)
        format.html { redirect_to @favorite_post, notice: 'Favorite post was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite_post }
      else
        format.html { render :edit }
        format.json { render json: @favorite_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_posts/1
  # DELETE /favorite_posts/1.json
  def destroy
    @favorite_post.destroy
    respond_to do |format|
      format.html { redirect_to favorite_posts_url, notice: 'Favorite post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_post
      @favorite_post = FavoritePost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_post_params
      params.require(:favorite_post).permit(:user_id, :post_id)
    end
end
