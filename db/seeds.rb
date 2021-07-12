require 'faker'

puts "cleaning database"

Restaurant.destroy_all

puts "generate some restaurants..."

(1..20).each do |i|
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    rating: Faker::Number.between(from: 1, to: 5),
    food_type: Faker::Restaurant.type
  )
end

puts "Done ! #{Restaurant.count} restaurants created !"
