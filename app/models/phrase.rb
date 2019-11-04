class Phrase < ApplicationRecord
  belongs_to :vocabulary
  validates :english, :translation, presence: true
end
