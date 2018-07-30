class User < ApplicationRecord
  has_many :transactions, dependent: :destroy
  has_many :posts, dependent: :destroy
  # validates :username, presence: true, uniqueness: true
  # validates :email, presence: true, uniqueness: true, format:{ with: /\A[a-zA-Z]+\z/,
  #   message: "only allows school email" }
  validates :wechat_id, presence: true, uniqueness: true
end
