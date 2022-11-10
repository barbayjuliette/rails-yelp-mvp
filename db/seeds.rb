# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

puts "creating restaurants"

50.times do
  restaurant = Restaurant.new(name: Faker::Restaurant.name,
                              address: Faker::Address.full_address,
                              phone_number: Faker::PhoneNumber.phone_number,
                              category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample)
  restaurant.save!
end

puts "created 50 restaurants"
puts 'creating reviews'

100.times do
  # restaurant = Restaurant.find(rand(0..50))
  review = Review.new(content: Faker::Restaurant.review,
                      rating: rand(0..5),
                      restaurant: Restaurant.all.sample)
  review.save!
end

puts 'Reviews created'
