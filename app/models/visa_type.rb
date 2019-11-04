class VisaType < ApplicationRecord
  belongs_to :visa
  validates :type, :description, presence: true
end
