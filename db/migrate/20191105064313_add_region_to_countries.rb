class AddRegionToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :region, :string
  end
end
