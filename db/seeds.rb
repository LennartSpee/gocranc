# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

OfferSport.destroy_all
Booking.destroy_all
Offer.delete_all
Profile.destroy_all
User.delete_all
Sport.destroy_all

p "DB clean"

user_1 = User.create!(email: 'johndoe@gmail.com', password: "123456")
user_2 = User.create!(email: 'jsmith@gmail.com', password: "123456")
user_3 = User.create!(email: 'johblack@gmail.com', password: "123456")
user_4 = User.create!(email: 'johnwhite@gmail.com', password: "123456")
user_5 = User.create!(email: 'johnpink@gmail.com', password: "123456")
user_6 = User.create!(email: 'johnyellow@gmail.com', password: "123456")


p "user seeded"

# sports = ["Skiing", "Climbing", "Biking", "Flying", "Surfing", "Diving", "Moto"]
sport1 = Sport.new(name: "Skiing")
p sport1
file = URI.open('https://cdn.betterwalls.com/pim/pr/WP/30016334/photo-wallpaper-candide-thovex-out-of-nowhere-into-nowhere-x_big01.jpg')
sport1.photo.attach(io: file, filename: 'ski.jpg', content_type: 'image/jpg')
p sport1.photo
sport1.save
p sport1
sport2 = Sport.new(name: "Climbing")
p sport2
file = URI.open('https://img.redbull.com/images/c_crop,w_5122,h_2561,x_0,y_2956,f_auto,q_auto/c_scale,w_1200/redbullcom/2019/06/03/83ddcec2-b607-4def-a965-abb0b94fa412/how-to-take-indoor-climbing-outdoors')
sport2.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
sport2.save
sport3 = Sport.new(name: "Biking")
file = URI.open('https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Library-Sites-canyon-shared/default/dw87df4949/images/plp/Mountain/Sender/ridestyle-downhill-canyon-sender-01.jpg?sw=1920')
sport3.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
sport3.save

sport4 = Sport.new(name: "Flying")
file = URI.open('http://upload.wikimedia.org/wikipedia/commons/9/9b/Ocean_Wingsuit_Formation_%286366966219%29.jpg')
sport4.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
sport4.save
sport5 = Sport.new(name: "Surfing")
file = URI.open('https://www.boardsportsource.com/wp-content/uploads/2021/07/Mikey-February-by-Alan-Van-Gysen.jpg')
sport5.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
sport5.save
sport6 = Sport.new(name: "Diving")
file = URI.open('https://www.seabookings.com/blog/wp-content/uploads/2016/06/Coasteering-Red-Bull.jpghttps://www.rei.com/blog/wp-content/uploads/sites/4/2019/04/El-Chalten-by-Silvestre-Seree.jpg')
sport6.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
sport6.save
sport7 = Sport.new(name: "Moto")
file = URI.open('https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2015/04/15/1331717111521_3/james-stewart-a-praticar-na-sua-pista')
sport7.photo.attach(io: file, filename: 'climb.jpg', content_type: 'image/jpg')
sport7.save

p "sports with pics"
offer = Offer.create!(title: 'Skiing', price: '50', duration: '30',
                      description: 'Learn how to stand up on a bord and catch your first waves',
                      location: 'Lisbon', latitude: 38.722028, longitude: -9.139139, user: user_1)
OfferSport.create(offer: offer, sport: Sport.find_by(name: "Skiing"))
offer = Offer.create!(title: 'Climbing', price: '50', duration: '30', description: 'Control your body, control your mind', location: 'Lisbon', latitude: 38.722028, longitude: -9.139139, user: user_2)
OfferSport.create(offer: offer, sport: Sport.find_by(name: "Climbing"))
offer = Offer.create!(title: 'Biking', price: '50', duration: '30', description: 'Lord of the Rings', location: 'Lisbon', latitude: 38.722028, longitude: -9.139139, user: user_3)
OfferSport.create(offer: offer, sport: Sport.find_by(name: "Biking"))
offer = Offer.create!(title: 'Flying', price: '50', duration: '30', description: 'Learn scales and chords and play your favourite songs', location: 'Lisbon', latitude: 38.722028, longitude: -9.139139, user: user_4)
OfferSport.create(offer: offer, sport: Sport.find_by(name: "Biking"))
offer = Offer.create!(title: 'Surfing', price: '50', duration: '30', description: 'If you struggle with the english vocabulary, I am your guy', location: 'Lisbon', latitude: 38.722028, longitude: -9.139139, user: user_5)
OfferSport.create(offer: offer, sport: Sport.find_by(name: "Surfing"))
offer = Offer.create!(title: 'Diving', price: '50', duration: '30', description: 'Play like a pro', location: 'Lisbon', latitude: 38.722028, longitude: -9.139139, user: user_6)
OfferSport.create(offer: offer, sport: Sport.find_by(name: "Diving"))
offer = Offer.create!(title: 'Moto', price: '50', duration: '30', description: 'Play like a pro', location: 'Lisbon', latitude: 38.722028, longitude: -9.139139, user: user_6)
OfferSport.create(offer: offer, sport: Sport.find_by(name: "Moto"))

p "Offers"
