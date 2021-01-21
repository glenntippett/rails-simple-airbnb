# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

10.times do
  flat = Flat.create!(
    name: Faker::TvShows::Simpsons.location,
    address: Faker::Address.street_address,
    description: Faker::TvShows::FamilyGuy.quote,
    price_per_night: rand(50..1000),
    number_of_guests: rand(1..10)
    )
  puts "Created #{flat.name}"
end

puts "All done!"
