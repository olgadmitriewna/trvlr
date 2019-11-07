class Vocabulary < ApplicationRecord
  belongs_to :country
  has_many :phrases
end
