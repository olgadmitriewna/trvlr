class UserPlace < ApplicationRecord
  #belongs_to :country
  belongs_to :user
  belongs_to :place
  # has_many :users
end
