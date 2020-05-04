# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

nb_user = 10
nb_city = 10
nb_gossip = 20
nb_tags = 10
nb_messages = 20
nb_comments = 20
nb_likes = 20
users = []
cities = []
gossips = []
tags = []
messages = []
likes = []
comments = []
comments2 = []

#seeding des villes
nb_city.times do |x|
	city = City.create(
		name: Faker::Address.city,
		zip_code: Faker::Address.zip_code)
	cities << city
 	puts "Seeding City nb#{x}"
end


#Seeding des users
nb_user.times do |x|
	user = User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		description: Faker::Lorem.paragraph,
		email: Faker::Internet.email,
		age: rand(16..80),)
	users << user
 	puts "Seeding user nb#{x}"
end

# Seed des gossips
nb_gossip.times do |x|
	gossip = Gossip.create(
			title: Faker::Book.title,
			content: Faker::Lorem.paragraph,)
	gossips << gossip
 	puts "Seeding gossip nb#{x}"
end

#Seed des tags
nb_tags.times do |x|
	tag = Tag.create(
		title: Faker::Book.genre)
	tags << tag
 	puts "Seeding tag nb#{x}"
end


#seeding des messages
nb_messages.times do |x|
	message = PrivateMessage.create(
		content: Faker::Lorem.paragraph)
	messages << message
	puts "Seeding Private messages nb#{x}"
end
