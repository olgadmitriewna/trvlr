class UserPhrase < ApplicationRecord
  belongs_to :user
  belongs_to :phrase
  after_create :set_interest

  def set_interest
    unless self.user.likes_the_country(self.phrase.vocabulary.country)
      Interest.create(user: self.user, country: self.phrase.vocabulary.country)
    end
  end

end
