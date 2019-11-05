# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "json"
require "rest-client"

countries = ["france", "spain", "japan"]

countries.each do |country_name|
  response = RestClient.get "https://restcountries.eu/rest/v2/name/#{country_name}"
  data = JSON.parse(response)

  country = Country.new(
    name: data[0]["name"]
  )

  country.save!
  p country

  culture = Culture.new(
    country_id: country.id
  )
end

