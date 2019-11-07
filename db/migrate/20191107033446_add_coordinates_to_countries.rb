class AddCoordinatesToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :longitude, :float
    add_column :countries, :latitude, :float
  end
end
