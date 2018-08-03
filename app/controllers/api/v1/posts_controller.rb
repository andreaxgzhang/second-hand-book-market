class Api::V1::PostsController < Api::V1::BaseController

  # before_action :set_post, only: [ :show ]
  def index
    p params[:query]
    if params[:query].present? && params[:query] != "undefined"
      @posts = Post.global_search(params[:query]).select {|post| post.confirmed == false }
    else
      @posts = Post.all
    end
  end

  def show
        @post = Post.find(params[:id])


  end

  def update
    @post = Post.find(params[:id])
    if (@post.update set_params)
      render :show
    else
      render_error
    end
  end

  def create
    @post = Post.create(set_params)

    if @post.save
      # redirect_to api_v1_post_path(@post)
    else
      render_error
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      # redirect_to api_v1_posts_path
    else
      render_error
    end

  end

  private

  def render_error
    render json: { errors: @post.errors.full_messages },
      status: :unprocessable_entity
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def set_params
    params.require(:post).permit(:title, :description, :price, :course_number, :user_id,:professor, :photo, :confirmed)
  end

end

