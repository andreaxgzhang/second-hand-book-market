class Post < ApplicationRecord
  has_one :transactions
  belongs_to :user
end
