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

user1 = User.create!(email: "mysty@gmail.com", password: "123456")
user2 = User.create!(email: "alice@gmail.com", password: "123456")
user3 = User.create!(email: "perry@gmail.com", password: "123456")
user4 = User.create!(email: "shirley@gmail.com", password: "123456")
user5 = User.create!(email: "roberta@gmail.com", password: "123456")
user6 = User.create!(email: "jamie@gmail.com", password: "123456")
user7 = User.create!(email: "sy@gmail.com", password: "123456")

p "user seeded"

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

sport6 = Sport.new(name: "Motorsports")
file = URI.open('https://racemotor.com.br/wp-content/uploads/2021/09/SI202109190758.jpg')
sport6.photo.attach(io: file, filename: 'Moto.jpg', content_type: 'image/jpg')
sport6.save

profile1 = Profile.new(
  user: user1,
  name: "Misty Newton",
  phone: +351961234567,
  age: 51,
  bio: "Your life becomes a masterpiece when you learn to master peace.",
  address: "U.S.",
  user_type: "Guide"
)
profile1.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/profile2.png')), filename: 'profile2.png')
profile1.save!

profile2 = Profile.new(
  user: user2,
  name: "Alice Guerrero",
  phone: +351965478965,
  age: 36,
  bio: "Your life does not get better by chance. It gets better by change.",
  address: "Spain",
  user_type: "Guide"
)
profile2.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/profile5.png')), filename: 'profile5.png')
profile2.save!

profile3 = Profile.new(
  user: user3,
  name: "Perry Byrd",
  phone: +351968798654,
  age: 27,
  bio: "Go the extra mile, it’s never crowded.",
  address: "London",
  user_type: "Guide"
)
profile3.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/profile4.png')), filename: 'profile4.png')
profile3.save!

profile4 = Profile.new(
  user: user4,
  name: "Shirley Wolf",
  phone: +351969874563,
  age: 25,
  bio: "Travel is the only thing you buy that makes you richer.",
  address: "France",
  user_type: "Guide"
)
profile4.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/profile3.png')), filename: 'profile3.png')
profile4.save!

profile5 = Profile.new(
  user: user5,
  name: "Roberta Lloyd",
  phone: +351967891234,
  age: 45,
  bio: "Take only memories, leave only footprints.",
  address: "USA",
  user_type: "Guide"
)
profile5.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/profile6.png')), filename: 'profile6.png')
profile5.save!

profile6 = Profile.new(
  user: user6,
  name: "Jamie Miles",
  phone: +351961237894,
  age: 23,
  bio: "Life is either a daring adventure or nothing at all.",
  address: "Brazil",
  user_type: "Guide"
)
profile6.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/avatar.png')), filename: 'avatar.png')
profile6.save!

profile7 = Profile.new(
  user: user7,
  name: "Sy",
  phone: +351961237894,
  age: 23,
  bio: "Life is either a daring adventure or nothing at all.",
  address: "Lisbon",
  user_type: "Guide"
)
profile7.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/sy.png')), filename: 'sy.png')
profile7.save!

offer1 = Offer.new(
  title: 'Skitour Davos',
  price: '50',
  duration: '8',
  description: 'When life gives you snow you go skiing…',
  location: 'Switzerland',
  user: User.all[0],
  sport: Sport.all[0]
)
file = URI.open('https://cdn.betterwalls.com/pim/pr/WP/30016334/photo-wallpaper-candide-thovex-out-of-nowhere-into-nowhere-x_big01.jpg')
offer1.photo.attach(io: file, filename: 'Ski.jpg', content_type: 'image/jpg')
offer1.save

offer2 = Offer.new(
  title: 'Climbing in Brazil',
  price: '50',
  duration: '3',
  description: 'Control your body, control your mind',
  location: 'Rio de Janeiro',
  user: User.all[1],
  sport: Sport.all[1]
)
file = URI.open('https://img.redbull.com/images/c_crop,w_5122,h_2561,x_0,y_2956,f_auto,q_auto/c_scale,w_1200/redbullcom/2019/06/03/83ddcec2-b607-4def-a965-abb0b94fa412/how-to-take-indoor-climbing-outdoors')
offer2.photo.attach(io: file, filename: 'Climb.jpg', content_type: 'image/jpg')
offer2.save

offer3 = Offer.new(
  title: 'Cycling in Portugal',
  price: '50',
  duration: '6',
  description: 'You are one ride away from a good mood.',
  location: 'Monsanto',
  user: User.all[2],
  sport: Sport.all[2]
)
file = URI.open('https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Library-Sites-canyon-shared/default/dw87df4949/images/plp/Mountain/Sender/ridestyle-downhill-canyon-sender-01.jpg?sw=1920')
offer3.photo.attach(io: file, filename: 'Cycling.jpg', content_type: 'image/jpg')
offer3.save!

offer4 = Offer.new(
  title: 'Skydive in Dubai',
  price: '80',
  duration: '3',
  description: 'Those who don´t jump, will never fly.',
  location: 'Dubai',
  user: User.all[3],
  sport: Sport.all[3]
)
file = URI.open('http://upload.wikimedia.org/wikipedia/commons/9/9b/Ocean_Wingsuit_Formation_%286366966219%29.jpg')
offer4.photo.attach(io: file, filename: 'Sky Diving.jpg', content_type: 'image/jpg')
offer4.save

offer5 = Offer.new(
  title: 'Surfing in France',
  price: '25',
  duration: '2',
  description: 'Learn how to stand up on a bord and catch your first waves',
  location: 'Biarritz',
  user: User.all[4],
  sport: Sport.all[4]
)
file = URI.open('https://www.boardsportsource.com/wp-content/uploads/2021/07/Mikey-February-by-Alan-Van-Gysen.jpg')
offer5.photo.attach(io: file, filename: 'Surfing.jpg', content_type: 'image/jpg')
offer5.save

offer6 = Offer.new(
  title: 'Motorbike in Spain',
  price: '50',
  duration: '4',
  description: 'Everything looks better from the inside of a motorcycle helmet.',
  location: 'Vigo',
  user: User.all[5],
  sport: Sport.all[5]
)
file = URI.open('https://racemotor.com.br/wp-content/uploads/2021/09/SI202109190758.jpg')
offer6.photo.attach(io: file, filename: 'Motorbike.jpg', content_type: 'image/jpg')
offer6.save

offer7 = Offer.new(
  title: 'Skydiving in Evora',
  price: '200',
  duration: '3',
  description: 'Enjoy Portugal from your favorite view',
  location: 'Evora',
  user: User.all[3],
  sport: Sport.all[3]
)
file = URI.open('https://www.airemotions.com/wp-content/uploads/2020/08/air-emotions-salto-paraquedas-portugal-skydive-tandem-algarve-portimao.jpg')
offer7.photo.attach(io: file, filename: 'Motorbike.jpg', content_type: 'image/jpg')
offer7.save

offer8 = Offer.new(
  title: 'Tow in Surfing in Nazare',
  price: '250',
  duration: '4',
  description: 'Go for your biggest experience whenever swell arrives',
  location: 'Nazare',
  user: User.all[6],
  sport: Sport.all[4]
)
file = URI.open('https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2017/03/06/1331847907687_2/nazare-march-first-mega-swell')
offer8.photo.attach(io: file, filename: 'Surfing.jpg', content_type: 'image/jpg')
offer8.save

offer9 = Offer.new(
  title: 'Surfing Ireland',
  price: '50',
  duration: '3',
  description: 'Learn how to stand up on a bord and catch your first waves',
  location: 'Biarritz',
  user: User.all[4],
  sport: Sport.all[4]
)
file = URI.open('https://www.surfholidays.com/assets/images/blog/2015-11-10-Mullaghmore%20by%20Christian%20McLeod.jpg')
offer9.photo.attach(io: file, filename: 'Surfing.jpg', content_type: 'image/jpg')
offer9.save


p "sports with pics"
