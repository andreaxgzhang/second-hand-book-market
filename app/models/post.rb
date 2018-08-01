class Post < ApplicationRecord
  include PgSearch

  # has_one :transaction
  # belongs_to :user

  # validates :title, presence: true
  # validates :price, presence: true, numericality: { only_integer: true }
  # validates :course_number, presence: true
  # validates :professor, presence: true

  pg_search_scope :global_search,
                  against: [ :title, :description, :course_number, :professor ],
                  using: {
                          tsearch: { prefix: true } # <-- now `superman batm` will return something!
                          }

end
