require 'open-uri'
require 'nokogiri'
require "csv"
require "json"
require "rest-client"
require 'csv'

#USERS

# puts 'creating users'
# Phrase.destroy_all
# Vocabulary.destroy_all
# User.destroy_all
# Country.destroy_all
# user = User.new(first_name: 'Olga', email: 'olga@gmail.com', password: "password")
# user.save!

# user = User.new(first_name: 'Jesh', email: 'jesh@gmail.com', password: "password")
# user.save!

# user = User.new(first_name: 'Elise', email: 'elise@gmail.com', password: "password")
# user.save!

# puts 'users created'

#COUNTRIES

countries_list = ["morocco", "south%20africa", "tunisia", "algeria", "zimbabwe", "ivory%20coast", "botswana", "namibia", "mozambique", "united%20states", "mexico", "canada", "argentina", "brazil", "dominican%20republic", "chile", "cuba", "peru", "colombia", "china", "thailand", "japan", "hong%20kong", "malaysia", "macau", "india", "vietnam", "indonesia", "singapore", "france", "spain", "italy", "turkey", "germany", "united%20kingdom", "austria", "greece", "russia", "portugal", "saudi%20arabia", "united%20arab%20emirates", "egypt", "iran", "bahrain", "jordan", "israel", "oman", "qatar"]

# countries_list = {
#    "morocco" => "url",
#    "south%20africa", "tunisia", "algeria", "zimbabwe", "ivory%20coast", "botswana", "namibia", "mozambique", "united%20states", "mexico", "canada", "argentina", "brazil", "dominican%20republic", "chile", "cuba", "peru", "colombia", "china", "thailand", "japan", "hong%20kong", "malaysia", "macau", "india", "vietnam", "indonesia", "singapore", "france", "spain", "italy", "turkey", "germany", "united%20kingdom", "austria", "greece", "russia", "portugal", "saudi%20arabia", "united%20arab%20emirates", "egypt", "iran", "bahrain", "jordan", "israel", "oman", "qatar"]


 countries_list.each do |country_name|
   response = RestClient.get "https://restcountries.eu/rest/v2/name/#{country_name}"
   data = JSON.parse(response)
   country = Country.new(
     name: data.first["name"],
     region: data.first["region"],
     language: data.first["languages"][0]["iso639_1"]
   )

   country.save!
   p country
end

#scraping site for places information

# countries = ["morocco", "south-africa", "egypt", "tunisia", "algeria", "zimbabwe", "ivory-coast", "botswana", "namibia", "mozambique", "united-states", "mexico", "canada", "argentina", "brazil", "dominican-republic", "chile", "cuba", "peru", "colombia", "china", "thailand", "japan", "hong-kong", "malaysia", "macau", "india", "vietnam", "indonesia", "singapore", "france", "spain", "italy", "turkey", "germany", "united-kingdom", "austria", "greece", "russia", "portugal", "saudi-arabia", "united-arab-emirates", "egypt", "iran", "bahrain", "jordan", "israel", "oman", "qatar"]

# csv_filepath = File.join(__dir__, "data/places.csv")
# CSV.open(csv_filepath, "wb+") do |csv|
#  csv << ["imglink", "infolink", "name", "city", "country", "lat", "lng"]
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
#        name = element.search("span").inner_html
#        city = element.attribute('data-city').value
#        country = element.attribute('data-country').value
#        lat = element.attribute('data-lat').value
#        lng = element.attribute('data-lng').value
#        csv << [img_link, info_link, name, city, country, lat, lng]
#      end
#    end
#  end
# end

#PLACES

filepath = Rails.root.join('db/data/places.csv')

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

CSV.foreach(filepath, csv_options) do |row|
  country = Country.where("name ILIKE ?", "%#{row["country"]}%").first
  place = Place.new(photo: row["imglink"], link: row["infolink"], name: row["name"], city: row["city"], latitude: row["lat"], longitude: row["lng"], country: country )
   puts "opened row"
   if place.save
    puts "saved"
  else
    p place.errors.messages
  end

end

#VOCABULARY

malay_vocab = Vocabulary.new(country_id: 30)
chinese_vocab = Vocabulary.new(country_id: 21)
french_vocab = Vocabulary.new(country_id: 13)

malay_words = [
  {translation: 'Hello', english: 'Hello'},
  {translation: 'Selamat tinggal', english: 'Goodbye'},
  {translation: 'Apa khabar?', english: 'How are you?'},
  {translation: 'Berapakah kosnya?', english: 'How much does it cost?'},
  {translation: 'Bagaimana saya boleh sampai ..?', english: 'How do I get to..?'},
  {translation: 'Ya', english: 'Yes'},
  {translation: 'tidak', english: 'No'},
  { translation:'Boleh saya..?', english: 'Can I have..?' },
  { translation:'Terima kasih', english: 'Thank you' }
]

malay_words.each do |word|
  Phrase.create!(
    vocabulary: malay_vocab,
    english: word[:english],
    translation: word[:translation]
  )
end

chinese_words = [
  {translation: 'Nǐ hǎo', english: 'Hello'},
  {translation: 'Zàijiàn', english: 'Goodbye'},
  {translation: 'Nǐ hǎo ma?', english: 'How are you?'},
  {translation: 'Tā yào duōshǎo qián?', english: 'How much does it cost?'},
  {translation: 'Wǒ zěnme qù?', english: 'How do I get to..?'},
  {translation: 'Shì', english: 'Yes'},
  {translation: 'Méiyǒu', english: 'No'},
  { translation:'Wǒ néng yǒu...... Ma?', english: 'Can I have..?' },
  { translation:'Xièxiè', english: 'Thank You' }
]

chinese_words.each do |word|
  Phrase.create!(
    vocabulary: chinese_vocab,
    english: word[:english],
    translation: word[:translation]
  )
end

french_words = [
  { translation:'Bonjour', english: 'Hello' },
  { translation:'Merci', english: 'Thank you'}
]

french_words.each do |word|
  Phrase.create!(
    vocabulary: french_vocab,
    english: word[:english],
    translation: word[:translation]
  )
end
