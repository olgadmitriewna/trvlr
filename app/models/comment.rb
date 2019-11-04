class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commentable_id
  validates :content, presence: true
end
