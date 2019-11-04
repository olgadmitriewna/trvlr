class Pin < ApplicationRecord
  belongs_to :place
  validates :latitude, :longitude, :description, :address, :photo, :title, :type, presence: true
end
