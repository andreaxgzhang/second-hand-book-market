class Api::V1::UsersController < Api::V1::BaseController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id]).update(set_params)
  end

  def purchased
    @user = User.find(params[:userId])
    # Transaction.create(user_id: params[:userId], post_id:Post.last.id)
    # @user.transactions.create(post_id: Post.last.id)
    @user.transactions
  end

  def sold
    @posts = User.find(params[:userId]).posts.where({confirmed:false})
    @transactions = []
    # Post.create(title: 'Introduction to Psychology', description: 'Likey New', course_number: 'ENWR 1510', professor: 'Rich Zhu', price: 20, user_id: 84)
    # Transaction.create(user_id: 84, post_id:Post.last)
    @posts.each do |post|
      # p Transaction.where(post_id: 8)
      tac = Transaction.where({post_id: post.id, completed:false})
      p tac
      @transactions << tac[0] if tac.length > 0
    end
    @transactions
    # p @transactions
    # @transactions
  end

  private
  def set_params
    params.require(:user).permit(:name, :gender, :avatarUrl, :wechat_id, :email, :school)
  end
end
