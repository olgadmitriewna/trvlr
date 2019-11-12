class Country < ApplicationRecord
  has_many :places
  has_many :vocabularies
  geocoded_by :name
  after_validation :geocode, if: :will_save_change_to_name?
  has_many :visits
  has_many :users, through: :visits

  def visitors
    return users
  end

end
