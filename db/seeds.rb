# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "json"
require "rest-client"
#Asia
countries_list = ["Korea%20(Republic%20of)", "morocco", "south%20africa", "egypt", "tunisia", "algeria", "zimbabwe", "ivory%20coast", "botswana", "namibia", "mozambique", "united%20states", "mexico", "canada", "argentina", "brazil", "dominican%20republic", "chile", "cuba", "peru", "colombia", "china", "thailand", "japan", "hong%20kong", "malaysia", "macau", "india", "vietnam", "indonesia", "singapore", "france", "spain", "italy", "turkey", "germany", "united%20kingdom", "austria", "greece", "russia", "portugal", "saudi%20arabia", "united%20arab%20emirates", "egypt", "iran", "bahrain", "jordan", "israel", "oman", "qatar"]

countries.each do |country_name|
  response = RestClient.get "https://restcountries.eu/rest/v2/name/#{country_name}"
  data = JSON.parse(response)

  country = Country.new(
    name: data.first["name"],
    region: data.first["region"]

  country.save!
  p country

  # culture = Culture.new(
  #   country_id: country.id
  # )

end

#change database:
#germany = Country.yhere(name: "germany")
#germany.name =


