class Place < ApplicationRecord
  belongs_to :country
  #geocoded_by :address
  # after_validation :geocode, if: ->(obj) { !obj.latitude? && !obj.longitude? }
end
