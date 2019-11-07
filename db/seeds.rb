require 'open-uri'
require 'nokogiri'
require "csv"
require "json"
require "rest-client"

puts 'creating users'

user = User.new(first_name: 'Olga', email: 'olga@gmail.com', password: "password")
user.save!

user = User.new(first_name: 'Jesh', email: 'jesh@gmail.com', password: "password")
user.save!

user = User.new(first_name: 'Elise', email: 'elise@gmail.com', password: "password")
user.save!

puts 'users created'

countries_list = ["morocco", "south%20africa", "tunisia", "algeria", "zimbabwe", "ivory%20coast", "botswana", "namibia", "mozambique", "united%20states", "mexico", "canada", "argentina", "brazil", "dominican%20republic", "chile", "cuba", "peru", "colombia", "china", "thailand", "japan", "hong%20kong", "malaysia", "macau", "india", "vietnam", "indonesia", "singapore", "france", "spain", "italy", "turkey", "germany", "united%20kingdom", "austria", "greece", "russia", "portugal", "saudi%20arabia", "united%20arab%20emirates", "egypt", "iran", "bahrain", "jordan", "israel", "oman", "qatar"]

 countries_list.each do |country_name|
   response = RestClient.get "https://restcountries.eu/rest/v2/name/#{country_name}"
   data = JSON.parse(response)

   country = Country.new(
     name: data.first["name"],
     region: data.first["region"]
   )

   country.save!
   p country

   # culture = Culture.new(
   #   country_id: country.id
   # )

end

#scraping site for places information

#countries = ["morocco", "south-africa", "egypt", "tunisia", "algeria", "zimbabwe", "ivory-coast", "botswana", "namibia", "mozambique", "united-states", "mexico", "canada", "argentina", "brazil", "dominican-republic", "chile", "cuba", "peru", "colombia", "china", "thailand", "japan", "hong-kong", "malaysia", "macau", "india", "vietnam", "indonesia", "singapore", "france", "spain", "italy", "turkey", "germany", "united-kingdom", "austria", "greece", "russia", "portugal", "saudi-arabia", "united-arab-emirates", "egypt", "iran", "bahrain", "jordan", "israel", "oman", "qatar"]
#csv_filepath = File.join(__dir__, "data/places.csv")
#CSV.open(csv_filepath, "wb+") do |csv|
#  csv << ["imglink", "infolink", "city", "country", "lat", "lng"]
#  base_url = "https://www.atlasobscura.com"

#  countries.each do |country|
#    url = "#{base_url}/things-to-do/#{country}"
#    html_file = open(url).read
#    html_doc = Nokogiri::HTML(html_file)

#    html_doc.search('.Card--flat').each do |element|
#      puts "creating a row #{element.attribute('data-city')}"
#      if (element.attribute('data-city'))
#        img_link = element.search("img").attribute("data-src")
#        info_link = "#{base_url}#{element.attribute('href').value}"
#        city = element.attribute('data-city').value
#        country = element.attribute('data-country').value
#        lat = element.attribute('data-lat').value
#        lng = element.attribute('data-lng').value
#        csv << [img_link, info_link, city, country, lat, lng]
#      end
#    end
#  end
# end

# french_vocab = Vocabulary.new(country_id: 13)
# italy_vocab = Vocabulary.new(country_id: 33)
# # words = [
# #   {
# #     vocabulary: french_vocab,
# #     original: 'Hello',
# #     translation: 'Bonjour'
# #   },
# #   {
# #     vocabulary: italy_vocab,
# #     original: 'Hello',
# #     translation: '....'
# #   }
# # ]

# french_words = [
#   { translation:'Bonjour', original: 'Hello' },
#   'Merci',
#   'Bon Appetit'
# ]

# french_words.each do |word|
#   Phrase.create!(
#     vocabulary: french_vocab,
#     original: word[:original],
#     translation: word[:translation]
#   )
# end
