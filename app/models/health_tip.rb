class HealthTip < ApplicationRecord
  belongs_to :health
  validates :description, :title, presence: true
end
