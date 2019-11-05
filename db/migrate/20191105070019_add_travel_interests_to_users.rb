class AddTravelInterestsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :travel_interests, :string
  end
end
