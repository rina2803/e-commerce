require 'faker'
#Item.destroy_all

image_name = rand(1..14)	
	20.times do
		Item.create(title: Faker::Creature::Cat.name,
					description: Faker::Creature::Cat.breed,
					price: Faker::Commerce.price(range: 0..10.0, as_string: true),
					image_url: "https://github.com/fenoh3ry/CattoPics-for-ecommerceProject/blob/master/#{image_name}.jpg"
					)
	end

puts "20 seed for item created succesfully with 4 attributs"

	10.times do
		User.create(email: Faker::Internet.email,
					password: "123456789")
	end

puts "10 seed for user created succesfully with 2 attributs"

	for user in (0..10)
		Cart.create(user_id: user)
	end

puts "10 seed for Cart created succesfully with attribut user_id "

	20.times do
		JoinTableCartItem.create(cart_id: rand(1..10),
								item_id: rand(1..20))
	end

puts "20 seed for JoinTableCartItem created succesfully with 2 attributs"

	for user in (0..10)
		Order.create(user_id: user)
	end

puts "10 seed for Order created succesfully with attribut user_id "

	20.times do
		JoinTableOrderItem.create(order_id: rand(1..10),
								item_id: rand(1..20))
	end

puts "20 seed for JoinTableOrderItem created succesfully with 2 attributs"