require 'open-uri'
require 'nokogiri'
require "csv"
require "json"
require "rest-client"
require 'csv'

# puts 'creating users'
Phrase.destroy_all
Vocabulary.destroy_all
Place.destroy_all
Country.destroy_all
User.destroy_all

#USERS

user = User.new(id: 1, email: "o.d.vrnn@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "Olga", bio: "I love to travel and connect with other people.", facebook_link: "olgadmitriewna", instagram_user_name: "olgadmitriewna", password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1571199222/mcffdaj59crbiisckibf.png"
user.save!

user = User.new(id: 2, email: "jesh@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "Jesh", bio: "I love to travel and connect with other people.", facebook_link: "jesh", instagram_user_name: "jesh", password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1573699231/duthzdxpumjs2addpisz.png"
user.save!

user = User.new(id: 3, email: "elise@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "Elise", bio: "I love to travel and connect with other people.", facebook_link: nil, instagram_user_name: nil, password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1571199233/yn45g3uxrj0zv09pda7c.png"
user.save!

user = User.new(id: 4, email: "carla@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "Carla", bio: "I love to travel and connect with other people. Shoot me a message on Instagram if you have any questions. Keep trvln 💛", facebook_link: nil, instagram_user_name: "carlacarmina", password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1571199244/yqvcskphj6foagjoi1ya.png"
user.save!

user = User.new(id: 5, email: "john@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "John", bio: "I love to travel and connect with other people.", facebook_link: nil, instagram_user_name: nil, password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1573699259/myshc1dn9cxaex79cxf3.png"
user.save!

user = User.new(id: 6, email: "lucas@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "Lucas", bio: "I love to travel and connect with other people.", facebook_link: nil, instagram_user_name: nil, password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1571199259/szhpexjadmrkjkr5uifm.png"
user.save!

user = User.new(id: 7, email: "luka@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "Luka", bio: "I love to travel and connect with other people.", facebook_link: nil, instagram_user_name: nil, password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1573699259/y361nixpedb08m0ki7mp.png"
user.save!

user = User.new(id: 8, email: "andrea@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "Andrea", bio: "I love to travel and connect with other people.", facebook_link: nil, instagram_user_name: nil, password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1571199259/psvhqgqwu7castxdobgg.png"
user.save!

user = User.new(id: 9, email: "marie@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "Marie", bio: "I love to travel and connect with other people.", facebook_link: nil, instagram_user_name: nil, password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1573699259/vhaqwyulqdthidomsge5.png"
user.save!

user = User.new(id: 10, email: "trish@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "Trish", bio: "I love to travel and connect with other people.", facebook_link: nil, instagram_user_name: nil, password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1573699260/l9d46jifzezvhgwb28zz.png"
user.save!

user = User.new(id: 11, email: "nadja@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "Nadja", bio: "I love to travel and connect with other people.", facebook_link: nil, instagram_user_name: nil, password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1571199264/gaqfyqbr2syfokevlz8x.png"
user.save!

user = User.new(id: 12, email: "polina@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "Polina", bio: "I love to travel and connect with other people.", facebook_link: nil, instagram_user_name: nil, password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1571199264/dpdu5m1pr8lhjxpkfohh.png"
user.save!

user = User.new(id: 13, email: "nina@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "Nina", bio: "I love to travel and connect with other people.", facebook_link: nil, instagram_user_name: nil, password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1571199266/mry6fvqrmmskicsk7cbh.png"
user.save!

user = User.new(id: 14, email: "gil@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "Gil", bio: "I love to travel and connect with other people.", facebook_link: nil, instagram_user_name: nil, password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1571199272/dvmemxkiyhrd0lsi5tzi.png"
user.save!

user = User.new(id: 15, email: "manuel@gmail.com", created_at: "1119-11-13 14:02:37", updated_at: "1119-11-13 14:04:04", first_name: "Manuel", bio: "I love to travel and connect with other people.", facebook_link: nil, instagram_user_name: nil, password: "password")
user.remote_photo_url = "https://res.cloudinary.com/dy0ujbaxb/image/upload/v1571199353/wj2sla0cgozghslzfbyv.png"
user.save!

puts 'users created'


#COUNTRIES

countries_list = {
  "morocco" => "https://images.pexels.com/photos/943510/pexels-photo-943510.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  "south%20africa" => "https://images.unsplash.com/photo-1552596160-2972cb5d9fc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1867&q=80",
  "tunisia" => "https://images.unsplash.com/photo-1555583742-74999122200a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "algeria" => "https://images.unsplash.com/photo-1527207680022-a9ecb15759a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2718&q=80",
  "zimbabwe" => "https://images.pexels.com/photos/861339/pexels-photo-861339.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  "ivory%20coast" => "https://images.pexels.com/photos/2174656/pexels-photo-2174656.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "botswana" => "https://images.unsplash.com/photo-1553775927-a071d5a6a39a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1878&q=80",
  "namibia" => "https://images.unsplash.com/photo-1413977886085-3bbbf9a7cf6e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "mozambique" => "https://images.unsplash.com/photo-1544298903-35eee5a95b4d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1995&q=80",
  "usa" => "https://images.pexels.com/photos/378570/pexels-photo-378570.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "mexico" => "https://images.unsplash.com/photo-1518105779142-d975f22f1b0a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "canada" => "https://images.unsplash.com/photo-1549064453-305277d30266?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80",
  "argentina" => "https://images.unsplash.com/photo-1545832063-74f2d924b61a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "brazil" => "https://images.pexels.com/photos/2868242/pexels-photo-2868242.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  "dominican%20republic" => "https://images.unsplash.com/photo-1524778880162-1b5dccfbdb0b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
  "chile" => "https://images.unsplash.com/photo-1490782300182-697b80ad4293?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80",
  "cuba" => "https://images.unsplash.com/flagged/photo-1563895868244-54dbb1585938?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "peru" => "https://images.unsplash.com/photo-1526392060635-9d6019884377?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "colombia" => "https://images.unsplash.com/photo-1536308037887-165852797016?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1912&q=80",
  "china" => "https://images.unsplash.com/photo-1543097692-fa13c6cd8595?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "thailand" => "https://images.unsplash.com/photo-1528181304800-259b08848526?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "japan" => "https://images.unsplash.com/photo-1480796927426-f609979314bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "hong%20kong" => "https://images.unsplash.com/photo-1507941097613-9f2157b69235?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2013&q=80",
  "malaysia" => "https://images.unsplash.com/photo-1541364354879-dd13266ab4ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1526&q=80",
  "macau" => "https://images.unsplash.com/photo-1556709911-93a82c864ece?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "india" => "https://images.pexels.com/photos/1007431/pexels-photo-1007431.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "vietnam" => "https://images.unsplash.com/photo-1480996408299-fc0e830b5db1?ixlib=rb-1.2.1&auto=format&fit=crop&w=1949&q=80",
  "indonesia" => "https://images.pexels.com/photos/1020016/pexels-photo-1020016.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  "singapore" => "https://images.unsplash.com/photo-1525625293386-3f8f99389edd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1549&q=80",
  "france" => "https://images.unsplash.com/photo-1509041322357-8a3f9757a475?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=928&q=80",
  "spain" => "https://images.unsplash.com/photo-1530127796739-53cf66b0e64d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1559&q=80",
  "italy" => "https://images.unsplash.com/photo-1504197885-609741792ce7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "turkey" => "https://images.unsplash.com/photo-1535916707207-35f97e715e1c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1867&q=80",
  "germany" => "https://images.unsplash.com/photo-1534313314376-a72289b6181e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "united%20kingdom" => "https://images.unsplash.com/photo-1529180184525-78f99adb8e98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "austria" => "https://images.unsplash.com/photo-1521320226546-87b106956014?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1949&q=80",
  "greece" => "https://images.pexels.com/photos/1029115/pexels-photo-1029115.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  "russia" => "https://images.unsplash.com/photo-1520106212299-d99c443e4568?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "portugal" => "https://images.unsplash.com/photo-1517159216101-2f4e45439fb9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "saudi%20arabia" => "https://images.unsplash.com/photo-1551041776-b00e405980f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "united%20arab%20emirates" => "https://images.unsplash.com/photo-1495885531856-008baf2cbaac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1867&q=80",
  "egypt" => "https://images.unsplash.com/photo-1529843362102-2a33a8a16544?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1867&q=80",
  "iran" => "https://images.unsplash.com/photo-1527126887308-6cdf83c7d844?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "bahrain" => "https://images.unsplash.com/photo-1548755212-734fccb42001?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
  "jordan" => "https://images.unsplash.com/photo-1547234936-74a4b1ee7f42?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1953&q=80",
  "israel" => "https://images.unsplash.com/photo-1516438305764-bd2d770f94bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1879&q=80",
  "oman" => "https://images.unsplash.com/photo-1517584299487-64f1326d3c03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2837&q=80",
  "qatar" => "https://images.unsplash.com/photo-1558950574-c9bd73f0833b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
}

#countries_list = ["morocco", "south%20africa", "tunisia", "algeria", "zimbabwe", "ivory%20coast", "botswana", "namibia", "mozambique", "united%20states", "mexico", "canada", "argentina", "brazil", "dominican%20republic", "chile", "cuba", "peru", "colombia", "china", "thailand", "japan", "hong%20kong", "malaysia", "macau", "india", "vietnam", "indonesia", "singapore", "france", "spain", "italy", "turkey", "germany", "united%20kingdom", "austria", "greece", "russia", "portugal", "saudi%20arabia", "united%20arab%20emirates", "egypt", "iran", "bahrain", "jordan", "israel", "oman", "qatar"]

 countries_list.each do |country_name, url|
   response = RestClient.get "https://restcountries.eu/rest/v2/name/#{country_name}"
   data = JSON.parse(response)
    case data.first["name"]
      when "British Indian Ocean Territory"
      name = "India"
      when "United Kingdom of Great Britain and Northern Ireland"
      name = "Great Britain"
      when "Iran (Islamic Republic of)"
      name = "Iran"
      when "Russian Federation"
      name = "Russia"
      when "United States of America"
      name = "America"
      else
      name = data.first["name"]
    end
   country = Country.new(
     name: name,
     photo: url,
     code: data.first["alpha3Code"],
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

puts "creating places"

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

puts "places created"

#VOCABULARY

puts "creating vocabs"

malay_vocab = Vocabulary.new(country: Country.where(name: 'Singapore').first)
chinese_vocab = Vocabulary.new(country: Country.where(name: 'China').first)
french_vocab = Vocabulary.new(country_id: Country.where(name: 'France').first)
spanish_vocab = Vocabulary.new(country: Country.where(name: 'Mexico').first)


spanish_words = [
  {translation: 'Hola', english: 'Hello'},
  {translation: 'Adiós', english: 'Goodbye'},
  {translation: 'Cómo estás?', english: 'How are you?'},
  {translation: 'Cuanto cuesta?', english: 'How much does it cost?'},
  {translation: 'Como llego a..?', english: 'How do I get to..?'},
  {translation: 'si', english: 'Yes'},
  {translation: 'No', english: 'No'},
  { translation:'Puedo tener..?', english: 'Can I have..?' },
  { translation:'Gracias', english: 'Thank you' }
]

spanish_words.each do |word|
  Phrase.create!(
    vocabulary: spanish_vocab,
    english: word[:english],
    translation: word[:translation]
  )
end

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

puts "vocabs created"

# CULTURE
# chinese_culture = Culture.new(country: Country.where(name: 'China').first)


# chinese_words = [
#   {paragraph1: 'Swan into China without making a few adjustments to your cultural radar and you’re setting yourself up for a fall. You’ll want to buy one or two absolute essentials before you head out, too. And then there’s the visa – do not forget the visa.',




# chinese_culture.each do |paragraph|
#   Culture.create!(
#     paragraph1: malay_vocab,
#     english: word[:english],
#     translation: word[:translation]
#   )
# end

# INTERESTS

puts "creating interests"

interest = Interest.new( user_id: 1, country_id: 30)
interest.save!
interest = Interest.new( user_id: 2, country_id: 30)
interest.save!
interest = Interest.new( user_id: 3, country_id: 30)
interest.save!
interest = Interest.new( user_id: 4, country_id: 30)
interest.save!
interest = Interest.new( user_id: 5, country_id: 30)
interest.save!
interest = Interest.new( user_id: 6, country_id: 30)
interest.save!
interest = Interest.new( user_id: 7, country_id: 30)
interest.save!
interest = Interest.new( user_id: 8, country_id: 30)
interest.save!
interest = Interest.new( user_id: 9, country_id: 30)
interest.save!
interest = Interest.new( user_id: 10, country_id: 30)
interest.save!
interest = Interest.new( user_id: 11, country_id: 30)
interest.save!
interest = Interest.new( user_id: 12, country_id: 30)
interest.save!
interest = Interest.new( user_id: 13, country_id: 30)
interest.save!
interest = Interest.new( user_id: 14, country_id: 30)
interest.save!
interest = Interest.new( user_id: 15, country_id: 30)
interest.save!
interest = Interest.new( user_id: 1, country_id: 1)
interest.save!
interest = Interest.new( user_id: 2, country_id: 1)
interest.save!
interest = Interest.new( user_id: 3, country_id: 1)
interest.save!
interest = Interest.new( user_id: 4, country_id: 1)
interest.save!
interest = Interest.new( user_id: 5, country_id: 1)
interest.save!
interest = Interest.new( user_id: 6, country_id: 1)
interest.save!
interest = Interest.new( user_id: 7, country_id: 1)
interest.save!
interest = Interest.new( user_id: 8, country_id: 1)
interest.save!
interest = Interest.new( user_id: 9, country_id: 1)
interest.save!
interest = Interest.new( user_id: 10, country_id: 1)
interest.save!
interest = Interest.new( user_id: 11, country_id: 1)
interest.save!
interest = Interest.new( user_id: 12, country_id: 1)
interest.save!
interest = Interest.new( user_id: 13, country_id: 1)
interest.save!
interest = Interest.new( user_id: 14, country_id: 1)
interest.save!
interest = Interest.new( user_id: 15, country_id: 1)
interest.save!

interest = Interest.new( user_id: 1, country_id: 22)
interest.save!
interest = Interest.new( user_id: 2, country_id: 22)
interest.save!
interest = Interest.new( user_id: 3, country_id: 22)
interest.save!
interest = Interest.new( user_id: 4, country_id: 22)
interest.save!

interest = Interest.new( user_id: 12, country_id: 3)
interest.save!
interest = Interest.new( user_id: 10, country_id: 3)
interest.save!
interest = Interest.new( user_id: 7, country_id: 3)
interest.save!

interest = Interest.new( user_id: 3, country_id: 23)
interest.save!
interest = Interest.new( user_id: 8, country_id: 23)
interest.save!
interest = Interest.new( user_id: 9, country_id: 23)
interest.save!

interest = Interest.new( user_id: 5, country_id: 16)
interest.save!
interest = Interest.new( user_id: 6, country_id: 16)
interest.save!
interest = Interest.new( user_id: 7, country_id: 16)
interest.save!

interest = Interest.new( user_id: 5, country_id: 13)
interest.save!
interest = Interest.new( user_id: 6, country_id: 13)
interest.save!
interest = Interest.new( user_id: 7, country_id: 13)
interest.save!

puts 'intersts created'

# VISITS

  puts "creating Visits"

  visit = Visit.new( user_id: 1, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 2, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 3, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 4, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 5, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 6, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 7, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 8, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 9, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 10, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 11, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 12, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 13, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 14, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 15, country_id: 11,  longitude: -102.552784, latitude: 23.634501)
  visit.save!
  visit = Visit.new( user_id: 1, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!
  visit = Visit.new( user_id: 2, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!
  visit = Visit.new( user_id: 3, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!
  visit = Visit.new( user_id: 4, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!
  visit = Visit.new( user_id: 5, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!
  visit = Visit.new( user_id: 6, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!
  visit = Visit.new( user_id: 7, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!
  visit = Visit.new( user_id: 8, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!
  visit = Visit.new( user_id: 9, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!
  visit = Visit.new( user_id: 10, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!
  visit = Visit.new( user_id: 11, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!
  visit = Visit.new( user_id: 12, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!
  visit = Visit.new( user_id: 13, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!
  visit = Visit.new( user_id: 14, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!
  visit = Visit.new( user_id: 15, country_id: 20, longitude: 104.195397, latitude: 35.86166)
  visit.save!

  visit = Visit.new( user_id: 1, country_id: 32, longitude: 12.56738, latitude: 41.87194)
  visit.save!
  visit = Visit.new( user_id: 2, country_id: 32, longitude: 12.56738, latitude: 41.87194)
  visit.save!
  visit = Visit.new( user_id: 3, country_id: 32, longitude: 12.56738, latitude: 41.87194)
  visit.save!
  visit = Visit.new( user_id: 4, country_id: 32, longitude: 12.56738, latitude: 41.87194)
  visit.save!

  visit = Visit.new( user_id: 12, country_id: 17, longitude: -77.781167, latitude: 21.521757)
  visit.save!
  visit = Visit.new( user_id: 10, country_id: 17, longitude: -77.781167, latitude: 21.521757)
  visit.save!
  visit = Visit.new( user_id: 7, country_id: 17, longitude: -77.781167, latitude: 21.521757)
  visit.save!

  visit = Visit.new( user_id: 3, country_id: 18, longitude: -75.015152, latitude: -9.189967)
  visit.save!
  visit = Visit.new( user_id: 8, country_id: 18, longitude: -75.015152, latitude: -9.189967)
  visit.save!
  visit = Visit.new( user_id: 9, country_id: 18, longitude: -75.015152, latitude: -9.189967)
  visit.save!

  visit = Visit.new( user_id: 5, country_id: 22,  longitude: 138.252924, latitude: 36.204824)
  visit.save!
  visit = Visit.new( user_id: 6, country_id: 22,  longitude: 138.252924, latitude: 36.204824)
  visit.save!
  visit = Visit.new( user_id: 7, country_id: 22,  longitude: 138.252924, latitude: 36.204824)
  visit.save!

  visit = Visit.new( user_id: 5, country_id: 37, longitude: 21.824312, latitude: 39.074208)
  visit.save!
  visit = Visit.new( user_id: 6, country_id: 37, longitude: 21.824312, latitude: 39.074208)
  visit.save!
  visit = Visit.new( user_id: 7, country_id: 37, longitude: 21.824312, latitude: 39.074208)
  visit.save!

  puts 'visits created'




