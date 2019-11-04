class Visa < ApplicationRecord
  belongs_to :country
  has_many :visa_type
end
