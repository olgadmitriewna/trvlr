class UserPlace < ApplicationRecord
  #belongs_to :country
  belongs_to :user
  belongs_to :place
  # has_many :users
  before_save :set_country
  after_create :set_interest
  def set_country
    self.country_id = self.place.country_id
  end

  def set_interest
    unless self.user.likes_the_country(self.place.country)
      Interest.create(user: self.user, country: self.place.country)
    end
  end
end
