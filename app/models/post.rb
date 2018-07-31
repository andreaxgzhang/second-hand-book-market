class Post < ApplicationRecord
  # has_one :transaction
  belongs_to :user
  # validates :title, presence: true
  # validates :price, presence: true, numericality: { only_integer: true }
  # validates :course_number, presence: true
  # validates :professor, presence: true
end
