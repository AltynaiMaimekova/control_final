# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(name: 'altynai', email:'altynai@gmail.com', password: 'qwerty', password_confirmation: 'qwerty')
user2 = User.create!(name: 'akinai', email:'akinai@gmail.com', password: 'qwerty1', password_confirmation: 'qwerty1')
category1 = Category.create!(name: "Restaurants")
category2 = Category.create!(name: "Cafes")
category3 = Category.create!(name: "Pubs")
category4 = Category.create!(name: "Taverns")

place1 = user1.places.create!(title: 'Alibaba', description: "Good place for rest", agreement: true, status: true, category: category1, image: File.new("app/assets/images/summer.jpg"))
place2 = user1.places.create!(title: 'Navigator', description: "Good place for rest", agreement: true, status: true, category: category2, image: File.new("app/assets/images/summer.jpg"))
place3 = user1.places.create!(title: 'Moskva', description: "Good place for rest", agreement: true, status: true, category: category3, image: File.new("app/assets/images/summer.jpg"))
place4 = user2.places.create!(title: 'Frunze', description: "Good place for rest", agreement: true, status: true, category: category4, image: File.new("app/assets/images/summer.jpg"))
place5 = user2.places.create!(title: 'Faiza', description: "Good place for rest", agreement: true, status: true, category: category1, image: File.new("app/assets/images/summer.jpg"))
place6 = user2.places.create!(title: 'Bella Italia', description: "Good place for rest", agreement: true, status: true, category: category2, image: File.new("app/assets/images/summer.jpg"))

review1 = user1.reviews.create!(content: "Like this place", food: 3, service: 4, interior: 5, place: place1)
review2 = user2.reviews.create!(content: "Like this place", food: 3, service: 2, interior: 2, place: place5)
review3 = user1.reviews.create!(content: "Like this place", food: 3, service: 3, interior: 3, place: place2)
review4 = user2.reviews.create!(content: "Like this place", food: 3, service: 4, interior: 4, place: place3)
review5 = user2.reviews.create!(content: "Like this place", food: 3, service: 5, interior: 5, place: place4)
review6 = user2.reviews.create!(content: "Like this place", food: 3, service: 5, interior: 5, place: place6)

picture1 = user1.pictures.create!(place: place1,image: File.new("app/assets/images/summer.jpg"))
picture2 = user1.pictures.create!(place: place1,image: File.new("app/assets/images/summer.jpg"))
picture3 = user2.pictures.create!(place: place1,image: File.new("app/assets/images/summer.jpg"))
picture4 = user1.pictures.create!(place: place2,image: File.new("app/assets/images/summer.jpg"))
picture5 = user2.pictures.create!(place: place2,image: File.new("app/assets/images/summer.jpg"))