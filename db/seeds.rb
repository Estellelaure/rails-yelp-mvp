# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0756543289", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "073442289", category: "french" }
dishooma = { name: "Dishooma", address: "72 Boundary St, London E2 7JE", phone_number: "0756543277", category: "chinese" }
pizza_west =  { name: "Pizza West", address: "6A Shoreditch High St, London E1 6PQ", phone_number: "059442289", category: "french" }
pizza_south =  { name: "Pizza South", address: "12A Shoreditch High St, London E1 3PQ", phone_number: "098442285", category: "italian" }

[ dishoom, pizza_east, dishooma, pizza_west, pizza_south ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
