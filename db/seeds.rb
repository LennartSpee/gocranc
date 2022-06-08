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

# 6.times do
#   User.create!(email: Faker::Internet.email, password: "123456")
# end

user1 = User.create!(email: "mysty@gmail.com", password: "123456")
user2 = User.create!(email: "alice@gmail.com", password: "123456")
user3 = User.create!(email: "perry@gmail.com", password: "123456")
user4 = User.create!(email: "shirley@gmail.com", password: "123456")
user5 = User.create!(email: "roberta@gmail.com", password: "123456")
user6 = User.create!(email: "jamie@gmail.com", password: "123456")

p "user seeded"

# sports = ["Skiing", "Climbing", "Biking", "Flying", "Surfing", "Diving", "Moto"]

sport1 = Sport.new(name: "Skiing")
file = URI.open('https://cdn.betterwalls.com/pim/pr/WP/30016334/photo-wallpaper-candide-thovex-out-of-nowhere-into-nowhere-x_big01.jpg')
sport1.photo.attach(io: file, filename: 'Ski.jpg', content_type: 'image/jpg')
sport1.save

sport2 = Sport.new(name: "Climbing")
file = URI.open('https://img.redbull.com/images/c_crop,w_5122,h_2561,x_0,y_2956,f_auto,q_auto/c_scale,w_1200/redbullcom/2019/06/03/83ddcec2-b607-4def-a965-abb0b94fa412/how-to-take-indoor-climbing-outdoors')
sport2.photo.attach(io: file, filename: 'Climb.jpg', content_type: 'image/jpg')
sport2.save

sport3 = Sport.new(name: "Cycling")
file = URI.open('https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Library-Sites-canyon-shared/default/dw87df4949/images/plp/Mountain/Sender/ridestyle-downhill-canyon-sender-01.jpg?sw=1920')
sport3.photo.attach(io: file, filename: 'Bikingrail.jpg', content_type: 'image/jpg')
sport3.save

sport4 = Sport.new(name: "Sky Diving")
file = URI.open('http://upload.wikimedia.org/wikipedia/commons/9/9b/Ocean_Wingsuit_Formation_%286366966219%29.jpg')
sport4.photo.attach(io: file, filename: 'Sky Diving.jpg', content_type: 'image/jpg')
sport4.save

sport5 = Sport.new(name: "Surfing")
file = URI.open('https://www.boardsportsource.com/wp-content/uploads/2021/07/Mikey-February-by-Alan-Van-Gysen.jpg')
sport5.photo.attach(io: file, filename: 'Surfing.jpg', content_type: 'image/jpg')
sport5.save

sport6 = Sport.new(name: "Moto")
file = URI.open('https://racemotor.com.br/wp-content/uploads/2021/09/SI202109190758.jpg')
sport6.photo.attach(io: file, filename: 'Moto.jpg', content_type: 'image/jpg')
sport6.save

# sport6 = Sport.new(name: "Diving")
# file = URI.open('https://www.seabookings.com/blog/wp-content/uploads/2016/06/Coasteering-Red-Bull.jpg')
# sport6.photo.attach(io: file, filename: 'diving.jpg', content_type: 'image/jpg')
# sport6.save

# Offers

offer1 = Offer.new(
  title: 'Skitour Davos',
  price: '50',
  duration: '30',
  description: 'When life gives you snow you go skiing…',
  location: 'Lisbon',
  latitude: 38.722028,
  longitude: -9.139139,
  user: User.all[1],
  sport: Sport.all[0]
)
file = URI.open('https://cdn.betterwalls.com/pim/pr/WP/30016334/photo-wallpaper-candide-thovex-out-of-nowhere-into-nowhere-x_big01.jpg')
offer1.photo.attach(io: file, filename: 'Ski.jpg', content_type: 'image/jpg')
offer1.save

offer2 = Offer.new(
  title: 'Climbing in Brazil',
  price: '50',
  duration: '30',
  description: 'Control your body, control your mind',
  location: 'Rio de Janeiro',
  latitude: 38.722028,
  longitude: -9.139139,
  user: User.all[1],
  sport: Sport.all[1]
)
file = URI.open('https://img.redbull.com/images/c_crop,w_5122,h_2561,x_0,y_2956,f_auto,q_auto/c_scale,w_1200/redbullcom/2019/06/03/83ddcec2-b607-4def-a965-abb0b94fa412/how-to-take-indoor-climbing-outdoors')
offer2.photo.attach(io: file, filename: 'Climb.jpg', content_type: 'image/jpg')
offer2.save

offer3 = Offer.new(
  title: 'Cycling in Portugal',
  price: '50',
  duration: '30',
  description: 'You are one ride away from a good mood.',
  location: 'Monsanto',
  latitude: 39.46203,
  longitude: -8.7118,
  user: User.all[2],
  sport: Sport.all[2]
)
file = URI.open('https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Library-Sites-canyon-shared/default/dw87df4949/images/plp/Mountain/Sender/ridestyle-downhill-canyon-sender-01.jpg?sw=1920')
offer3.photo.attach(io: file, filename: 'Cycling.jpg', content_type: 'image/jpg')
offer3.save

offer4 = Offer.new(
  title: 'Skydive in Dubai',
  price: '50',
  duration: '30',
  description: 'Those who don´t jump, will never fly.',
  location: 'Dubai',
  latitude: 38.722028,
  longitude: -9.139139,
  user: User.all[3],
  sport: Sport.all[3]
)
file = URI.open('http://upload.wikimedia.org/wikipedia/commons/9/9b/Ocean_Wingsuit_Formation_%286366966219%29.jpg')
offer4.photo.attach(io: file, filename: 'Sky Diving.jpg', content_type: 'image/jpg')
offer4.save

offer5 = Offer.new(
  title: 'Surfing in France',
  price: '50',
  duration: '30',
  description: 'Learn how to stand up on a bord and catch your first waves',
  location: 'Biarritz',
  latitude: 38.722028,
  longitude: -10.139139,
  user: User.all[4],
  sport: Sport.all[4]
)
file = URI.open('https://www.boardsportsource.com/wp-content/uploads/2021/07/Mikey-February-by-Alan-Van-Gysen.jpg')
offer5.photo.attach(io: file, filename: 'Surfing.jpg', content_type: 'image/jpg')
offer5.save

offer6 = Offer.new(
  title: 'Motobike in Spain',
  price: '50',
  duration: '30',
  description: 'Everything looks better from the inside of a motorcycle helmet.',
  location: 'Vigo',
  latitude: 38.722028,
  longitude: -9.139139,
  user: User.all[5],
  sport: Sport.all[5]
)
file = URI.open('https://racemotor.com.br/wp-content/uploads/2021/09/SI202109190758.jpg')
offer6.photo.attach(io: file, filename: 'Motorbike.jpg', content_type: 'image/jpg')
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

profile1 = User.new(name: "Misty Newton")
file = URI.open('https://cdn.betterwalls.com/pim/pr/WP/30016334/photo-wallpaper-candide-thovex-out-of-nowhere-into-nowhere-x_big01.jpg')
profile1.photo.attach(io: file, filename: 'Misty Newton.jpg', content_type: 'image/jpg')
profile1.save

profile1 = User.new(
  user: user,
  name: "Misty Newton",
  phone: 961234567,
  age: 51,
  bio: "Your life becomes a masterpiece when you learn to master peace.",
  address: "U.S.",
  user_type: "Guide"
)

profile2 = User.new(name: "Alice Guerrero")
file = URI.open('https://cdn.betterwalls.com/pim/pr/WP/30016334/photo-wallpaper-candide-thovex-out-of-nowhere-into-nowhere-x_big01.jpg')
profile2.photo.attach(io: file, filename: 'Alice Guerrero.jpg', content_type: 'image/jpg')
profile2.save

profile2 = User.new(
  user: user,
  name: "Alice Guerrero",
  phone: 965478965,
  age: 36,
  bio: "Your life does not get better by chance. It gets better by change.",
  address: "Spain",
  user_type: "Guide"
)

profile3 = User.new(name: "Perry Byrd")
file = URI.open('https://cdn.betterwalls.com/pim/pr/WP/30016334/photo-wallpaper-candide-thovex-out-of-nowhere-into-nowhere-x_big01.jpg')
profile3.photo.attach(io: file, filename: 'Perry Byrd.jpg', content_type: 'image/jpg')
profile3.save

profile3 = User.new(
  user: user,
  name: "Perry Byrd",
  phone: 968798654,
  age: 27,
  bio: "Go the extra mile, it’s never crowded.",
  address: "London",
  user_type: "Guide"
)

profile4 = User.new(name: "Shirley Wolf")
file = URI.open('https://cdn.betterwalls.com/pim/pr/WP/30016334/photo-wallpaper-candide-thovex-out-of-nowhere-into-nowhere-x_big01.jpg')
profile4.photo.attach(io: file, filename: 'Genaro.jpg', content_type: 'image/jpg')
profile4.save

profile4 = User.new(
  user: user,
  name: "Shirley Wolf",
  phone: 969874563,
  age: 25,
  bio: "Travel is the only thing you buy that makes you richer.",
  address: "France",
  user_type: "Guide"
)

profile5 = User.new(name: "Roberta Lloyd")
file = URI.open('https://cdn.betterwalls.com/pim/pr/WP/30016334/photo-wallpaper-candide-thovex-out-of-nowhere-into-nowhere-x_big01.jpg')
profile5.photo.attach(io: file, filename: 'Genaro.jpg', content_type: 'image/jpg')
profile5.save

profile5 = User.new(
  user: user,
  name: "Roberta Lloyd",
  phone: 967891234,
  age: 45,
  bio: "Take only memories, leave only footprints.",
  address: "Dubai",
  user_type: "Guide"
)

profile6 = User.new(name: "Jamie Miles")
file = URI.open('https://cdn.betterwalls.com/pim/pr/WP/30016334/photo-wallpaper-candide-thovex-out-of-nowhere-into-nowhere-x_big01.jpg')
profile6.photo.attach(io: file, filename: 'Jamie Miles.jpg', content_type: 'image/jpg')
profile6.save

profile6 = User.new(
  user: user,
  name: "Jamie Miles",
  phone: 961237894,
  age: 23,
  bio: "Life is either a daring adventure or nothing at all.",
  address: "Brazil",
  user_type: "Guide"
)

# profile1 = Profile.new(
#   name: "Skiing",
# )
# file = URI.open('https://cdn.betterwalls.com/pim/pr/WP/30016334/photo-wallpaper-candide-thovex-out-of-nowhere-into-nowhere-x_big01.jpg')
# profile1.photo.attach(io: file, filename: 'ski.jpg', content_type: 'image/jpg')
# profile1.save

# profile2 = Profile.new(name: "Climbing")
# file = URI.open('https://img.redbull.com/images/c_crop,w_5122,h_2561,x_0,y_2956,f_auto,q_auto/c_scale,w_1200/redbullcom/2019/06/03/83ddcec2-b607-4def-a965-abb0b94fa412/how-to-take-indoor-climbing-outdoors')
# profile2.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
# profile2.save

# profile3 = Profile.new(name: "Biking")
# file = URI.open('https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Library-Sites-canyon-shared/default/dw87df4949/images/plp/Mountain/Sender/ridestyle-downhill-canyon-sender-01.jpg?sw=1920')
# profile3.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
# profile3.save

# profile4 = Profile.new(name: "Flying")
# file = URI.open('http://upload.wikimedia.org/wikipedia/commons/9/9b/Ocean_Wingsuit_Formation_%286366966219%29.jpg')
# profile4.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
# profile4.save

# profile5 = Profile.new(name: "Surfing")
# file = URI.open('https://www.boardsportsource.com/wp-content/uploads/2021/07/Mikey-February-by-Alan-Van-Gysen.jpg')
# profile5.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
# profile5.save

# profile6 = Profile.new(name: "Diving")
# file = URI.open('https://www.seabookings.com/blog/wp-content/uploads/2016/06/Coasteering-Red-Bull.jpg')
# profile6.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
# profile6.save
