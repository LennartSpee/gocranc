# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Offer.delete_all
Profile.destroy_all
User.delete_all
Sport.destroy_all

user_1 = User.create!(email: 'johndoe@gmail.com', password: "123456")
user_2 = User.create!(email: 'jsmith@gmail.com', password: "123456")
user_3 = User.create!(email: 'johblack@gmail.com', password: "123456")
user_4 = User.create!(email: 'johnwhite@gmail.com', password: "123456")
user_5 = User.create!(email: 'johnpink@gmail.com', password: "123456")
user_6 = User.create!(email: 'johnyellow@gmail.com', password: "123456")

sports = ["Skiing", "Climbing", "Biking", "Flying", "Surfing","Diving", "Moto"]
sports.each do |sport|
  Sport.create(name: sport)
end

offer = Offer.create!(title: 'Skiing', price: '50', duration: '30', description: 'Learn how to stand up on a bord and catch your first waves', location: 'Lisbon', user: user_1)
OfferSport.create(offer: offer, sport: Sport.find_by(name: "Skiing"))
offer = Offer.create!(title: 'Climbing', price: '50', duration: '30', description: 'Control your body, control your mind', location: 'Lisbon', user: user_2)
OfferSport.create(offer: offer, sport: Sport.find_by(name: "Climbing"))
offer = Offer.create!(title: 'Biking', price: '50', duration: '30', description: 'Lord of the Rings', location: 'Lisbon', user: user_3)
OfferSport.create(offer: offer, sport: Sport.find_by(name: "Biking"))
offer = Offer.create!(title: 'Flying', price: '50', duration: '30', description: 'Learn scales and chords and play your favourite songs', location: 'Lisbon', user: user_4)
OfferSport.create(offer: offer, sport: Sport.find_by(name: "Biking"))
offer = Offer.create!(title: 'Surfing', price: '50', duration: '30', description: 'If you struggle with the english vocabulary, I am your guy', location: 'Lisbon', user: user_5)
OfferSport.create(offer: offer, sport: Sport.find_by(name: "Surfing"))
offer = Offer.create!(title: 'Diving', price: '50', duration: '30', description: 'Play like a pro', location: 'Lisbon', user: user_6)
OfferSport.create(offer: offer, sport: Sport.find_by(name: "Diving"))
offer = Offer.create!(title: 'Moto', price: '50', duration: '30', description: 'Play like a pro', location: 'Lisbon', user: user_6)
OfferSport.create(offer: offer, sport: Sport.find_by(name: "Moto"))
# connection between sport and offer
# OfferSport.create(offer: offer, sport: Sport.find_by(name: "Tennis"))
