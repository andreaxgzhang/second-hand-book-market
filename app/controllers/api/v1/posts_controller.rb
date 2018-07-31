class Api::V1::PostsController < Api::V1::BaseController
  before_action :set_post, only: [ :show ]
  def index
    # p 'aaaa'
    # p params
    # p 'bbbb'
    if params[:query].present?
      @posts = Post.global_search(params[:query])
    else
      @posts = Post.all
    end
  end

  def show
  end

  def create
    @post = Post.new(set_params)
    if @post.save
      redirect_to api_v1_post_path(@post)
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
    params.require(:post).permit(:title, :description, :price, :course_number, :professor, :photo)
  end
end
