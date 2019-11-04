class CultureTip < ApplicationRecord
  belongs_to :culture
  validates :description, :title, :photo, presence: true
end
