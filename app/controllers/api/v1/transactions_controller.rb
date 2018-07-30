class Api::V1::TransactionsController < Api::V1::BaseController
  def index
    @transactions = Transaction.all
  end

  def create
    @post = Post.find(params[:post_id])
    @transaction = Transaction.new(post_id: @post.id)
    if @transaction.save
      redirect_to api_v1_post_transactions_path(@post)
    else
      render_error
    end
  end

  private
  def render_error
    render json: { errors: @transaction.errors.full_messages },
      status: :unprocessable_entity
  end

  # def set_params
  #   params.require(:transaction).permit(:post_id)
  # end
end
