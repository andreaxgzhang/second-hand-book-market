class Api::V1::TransactionsController < Api::V1::BaseController
  def index
    @posts = User.find(params[:userId]).posts
    @transactions = []
    # Post.create(title: 'Introduction to Psychology', description: 'Likey New', course_number: 'ENWR 1510', professor: 'Rich Zhu', price: 20, user_id: 84)
    # Transaction.create(user_id: 84, post_id:Post.last)
    @posts.each do |post|
      tac = Transaction.where({ post_id: post.id, completed: true})
      if tac.length > 0
        @transactions << tac[0]
      end

    end
    # @transactions = Transaction.all
  end

  def create
    @post = Post.find(params[:post_id])
    @transaction = Transaction.new(set_params)
    #title: @post.title, photo: @post.photo, seller: User.find(@post.user_id).name, buyer: User.find()
    # @transaction.user_id = params[:user_id]
    # @transaction = @post.tra
    if @transaction.save
      p 'aaaa'
      BookingMailer.creation_confirmation(@transaction).deliver_now
      # redirect_to api_v1_post_transactions_path(@post)
    else
      render_error
    end
  end


  def update
    @transaction = Transaction.find(param_id)
    p @transaction
    @transaction.update(set_params)
  end

  private
  def render_error
    render json: { errors: @transaction.errors.full_messages },
      status: :unprocessable_entity
  end

  def set_params
    params.require(:transaction).permit(:post_id, :user_id, :photo, :title, :description, :price, :completed)
  end
  def param_id
    params.require(:transaction).permit(:post_id)
  end
end
