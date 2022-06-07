# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require "open-uri"

Booking.destroy_all
Offer.delete_all
Profile.destroy_all
Message.destroy_all
User.delete_all
Sport.destroy_all

p "DB clean"

6.times do
  User.create!(email: Faker::Internet.email, password: "123456")
end

p "user seeded"

# sports = ["Skiing", "Climbing", "Biking", "Flying", "Surfing", "Diving", "Moto"]

sport1 = Sport.new(name: "Skiing")
file = URI.open('https://cdn.betterwalls.com/pim/pr/WP/30016334/photo-wallpaper-candide-thovex-out-of-nowhere-into-nowhere-x_big01.jpg')
sport1.photo.attach(io: file, filename: 'ski.jpg', content_type: 'image/jpg')
sport1.save

sport2 = Sport.new(name: "Climbing")
file = URI.open('https://img.redbull.com/images/c_crop,w_5122,h_2561,x_0,y_2956,f_auto,q_auto/c_scale,w_1200/redbullcom/2019/06/03/83ddcec2-b607-4def-a965-abb0b94fa412/how-to-take-indoor-climbing-outdoors')
sport2.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
sport2.save

sport3 = Sport.new(name: "Biking")
file = URI.open('https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Library-Sites-canyon-shared/default/dw87df4949/images/plp/Mountain/Sender/ridestyle-downhill-canyon-sender-01.jpg?sw=1920')
sport3.photo.attach(io: file, filename: 'bikingrail.jpg', content_type: 'image/jpg')
sport3.save

sport4 = Sport.new(name: "Flying")
file = URI.open('http://upload.wikimedia.org/wikipedia/commons/9/9b/Ocean_Wingsuit_Formation_%286366966219%29.jpg')
sport4.photo.attach(io: file, filename: 'flying.jpg', content_type: 'image/jpg')
sport4.save

sport5 = Sport.new(name: "Surfing")
file = URI.open('https://www.boardsportsource.com/wp-content/uploads/2021/07/Mikey-February-by-Alan-Van-Gysen.jpg')
sport5.photo.attach(io: file, filename: 'surfing.jpg', content_type: 'image/jpg')
sport5.save

sport6 = Sport.new(name: "Diving")
file = URI.open('https://www.seabookings.com/blog/wp-content/uploads/2016/06/Coasteering-Red-Bull.jpg')
sport6.photo.attach(io: file, filename: 'diving.jpg', content_type: 'image/jpg')
sport6.save

sport7 = Sport.new(name: "Moto")
file = URI.open('https://racemotor.com.br/wp-content/uploads/2021/09/SI202109190758.jpg')
sport7.photo.attach(io: file, filename: 'moto.jpg', content_type: 'image/jpg')
sport7.save

# Offers

offer1 = Offer.new(
  title: 'Skitour Davos',
  price: '50',
  duration: '30',
  description: 'Learn how to stand up on a bord and catch your first waves',
  location: 'Lisbon',
  latitude: 38.722028,
  longitude: -9.139139,
  user: User.first,
  sport_id: 1
)
file = URI.open('https://cdn.betterwalls.com/pim/pr/WP/30016334/photo-wallpaper-candide-thovex-out-of-nowhere-into-nowhere-x_big01.jpg')
offer1.photo.attach(io: file, filename: 'ski.jpg', content_type: 'image/jpg')
offer1.save

offer2 = Offer.new(
  title: 'Climbing in Brazil',
  price: '50',
  duration: '30',
  description: 'Control your body, control your mind',
  location: 'Rio de Janeiro',
  latitude: 38.722028,
  longitude: -9.139139,
  user: User.second,
  sport_id: 2
)

file = URI.open('https://img.redbull.com/images/c_crop,w_5122,h_2561,x_0,y_2956,f_auto,q_auto/c_scale,w_1200/redbullcom/2019/06/03/83ddcec2-b607-4def-a965-abb0b94fa412/how-to-take-indoor-climbing-outdoors')
offer2.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
offer2.save


offer3 = Offer.new(
  title: 'Climbing in Brazil',
  price: '50',
  duration: '30',
  description: 'Control your body, control your mind',
  location: 'Rio de Janeiro',
  latitude: 38.722028,
  longitude: -9.139139,
  user: User.second,
  sport_id: 3
)

file = URI.open('https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Library-Sites-canyon-shared/default/dw87df4949/images/plp/Mountain/Sender/ridestyle-downhill-canyon-sender-01.jpg?sw=1920')
offer3.photo.attach(io: file, filename: 'biking.jpg', content_type: 'image/jpg')
offer3.save

offer4 = Offer.new(
  title: 'Biking in Portugal',
  price: '50',
  duration: '30',
  description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren,',
  location: 'Monsanto',
  latitude: 39.46203,
  longitude: -8.7118,
  user: User.third,
  sport_id: 4
)

file = URI.open('http://upload.wikimedia.org/wikipedia/commons/9/9b/Ocean_Wingsuit_Formation_%286366966219%29.jpg')
offer4.photo.attach(io: file, filename: 'flying.jpg', content_type: 'image/jpg')
offer4.save

offer5 = Offer.new(
  title: 'Surfing in France',
  price: '50',
  duration: '30',
  description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren,',
  location: 'Lisbon',
  latitude: 38.722028,
  longitude: -10.139139,
  user: User.third,
  sport_id: 5
)
file = URI.open('https://www.boardsportsource.com/wp-content/uploads/2021/07/Mikey-February-by-Alan-Van-Gysen.jpg')
offer5.photo.attach(io: file, filename: 'surfing.jpg', content_type: 'image/jpg')
offer5.save

offer6 = Offer.new(
  title: 'Moto',
  price: '50',
  duration: '30',
  description: 'Play like a pro',
  location: 'Lisbon',
  latitude: 38.722028,
  longitude: -9.139139,
  user: User.all.sample,
  sport_id: 6
)
file = URI.open('https://racemotor.com.br/wp-content/uploads/2021/09/SI202109190758.jpg')
offer6.photo.attach(io: file, filename: 'diving.jpg', content_type: 'image/jpg')
offer6.save


p "sports with pics"

# offer = Offer.create!(
#   title: 'Biking',
#   price: '50',
#   duration: '30',
#   description: 'Lord of the Rings',
#   location: 'Lisbon',
#   latitude: 38.722028,
#   longitude: -10.139139,
#   user: User.third)

# offer = Offer.create!(
#   title: 'Flying',
#   price: '50',
#   duration: '30',
#   description: 'Learn scales and chords and play your favourite songs',
#   location: 'Lisbon',
#   latitude: 38.722028,
#   longitude: -9.139139,
#   user: User.fourth)

# offer = Offer.create!(
#   title: 'Surfing',
#   price: '50',
#   duration: '30',
#   description: 'If you struggle with the english vocabulary, I am your guy',
#   location: 'Lisbon',
#   latitude: 38.722028,
#   longitude: -9.139139,
#   user: User.fifth)

# offer = Offer.create!(
#   title: 'Diving',
#   price: '50',
#   duration: '30',
#   description: 'Play like a pro',
#   location: 'Lisbon',
#   latitude: 38.722028,
#   longitude: -9.139139,
#   user: User.all.sample)

# offer = Offer.create!(
#   title: 'Moto',
#   price: '50',
#   duration: '30',
#   description: 'Play like a pro',
#   location: 'Lisbon',
#   latitude: 38.722028,
#   longitude: -9.139139,
#   user: User.all.sample)

# p "Offers"

# User.all.each do |user|
#   Profile.create!(
#     user: user,
#     name: Faker::Name.name,
#     phone: Faker::PhoneNumber.cell_phone_in_e164,
#     age: rand(18..99),
#     bio: Faker::Hipster.sentence(word_count: 10),
#     address: Faker::Address.street_address,
#     user_type: "Guide"
#   )
# end

profile1 = Profile.new(name: "Skiing")
file = URI.open('https://cdn.betterwalls.com/pim/pr/WP/30016334/photo-wallpaper-candide-thovex-out-of-nowhere-into-nowhere-x_big01.jpg')
profile1.photo.attach(io: file, filename: 'ski.jpg', content_type: 'image/jpg')
profile1.save

profile2 = Profile.new(name: "Climbing")
file = URI.open('https://img.redbull.com/images/c_crop,w_5122,h_2561,x_0,y_2956,f_auto,q_auto/c_scale,w_1200/redbullcom/2019/06/03/83ddcec2-b607-4def-a965-abb0b94fa412/how-to-take-indoor-climbing-outdoors')
profile2.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
profile2.save

profile3 = Profile.new(name: "Biking")
file = URI.open('https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Library-Sites-canyon-shared/default/dw87df4949/images/plp/Mountain/Sender/ridestyle-downhill-canyon-sender-01.jpg?sw=1920')
profile3.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
profile3.save

profile4 = Profile.new(name: "Flying")
file = URI.open('http://upload.wikimedia.org/wikipedia/commons/9/9b/Ocean_Wingsuit_Formation_%286366966219%29.jpg')
profile4.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
profile4.save

profile5 = Profile.new(name: "Surfing")
file = URI.open('https://www.boardsportsource.com/wp-content/uploads/2021/07/Mikey-February-by-Alan-Van-Gysen.jpg')
profile5.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
profile5.save

profile6 = Profile.new(name: "Diving")
file = URI.open('https://www.seabookings.com/blog/wp-content/uploads/2016/06/Coasteering-Red-Bull.jpg')
profile6.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
profile6.save
