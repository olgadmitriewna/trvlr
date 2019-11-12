class AddToVisits < ActiveRecord::Migration[5.2]
  def change
    add_column :visits, :latitude, :float
    add_column :visits, :longitude, :float
  end
end
