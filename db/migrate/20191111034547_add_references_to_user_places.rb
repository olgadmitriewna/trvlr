class AddReferencesToUserPlaces < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_places, :user, foreign_key: true
    add_reference :user_places, :place, foreign_key: true
  end
end
