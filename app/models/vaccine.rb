class Vaccine < ApplicationRecord
  belongs_to :health
  validates :icon, :name, presence: true
end
