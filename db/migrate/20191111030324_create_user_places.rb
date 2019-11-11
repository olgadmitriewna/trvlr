class CreateUserPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :user_places do |t|
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
