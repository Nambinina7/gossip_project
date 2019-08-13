# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



 #10 villes en base avec Faker
#10.times do
 	#city = City.create(
 		#name: Faker::Nation.capital_city,
 		#zip_code: Faker::Address.zip_code  
	#)
 #end

# # # 10 utilisateurs en base avec Faker.
#  cities = City.all
# 10.times do 
# 	user = User.new(
# 		first_name: Faker::Name.first_name, 
# 		last_name: Faker::Name.first_name, 
# 		description: Faker::Lorem.paragraph,
# 		email: Faker::Internet.email,
#  		age: Faker::Number.between(from: 18, to: 80)
#  	)

#  	user.city = cities[rand(9)]
#  	user.save
# end

# # # Lier avec les utilisateurs du seed.
# cities = City.all
#  users = User.all
#  users.each do |user|
# 	user.city = cities[rand(10)]
#  end

# # #20 gossips en base avec Faker et les lier avec leur auteur.
#  users = User.all
#  20.times do
#  	gossip = Gossip.new(
#  		title: Faker::Music.album,
#  		content: Faker::Movie.quote
# 	)

# 	gossip.user = users[rand(9)]
#  	gossip.save
# end

# # # Création de 10 tags
#10.times do
	#tag = Tag.create(title: Faker::Internet.slug)
#end
#
#tags = Tag.all
#
 #20.times do |i|
	#tg = TagGossip.create(tag: tags[rand(9)], gossip: gossips[i])
#end

# users = User.all
# users.each do |user|
# 	user.description = Faker::Lorem.paragraph
# 	user.save
# end


