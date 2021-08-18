# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# :name :address :phone_number :category
puts 'Cleaning the database'
Restaurant.destroy_all
puts 'Database cleaned!'

puts 'creating restaurants...'

# CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
CATEGORIES = %w[chinese italian japanese french belgian].freeze

12.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: CATEGORIES.sample
  )
  puts "Restaurant #{restaurant.name} has been created!"
end

puts "#{Restaurant.count} have been added! 👌"
