# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Find the user with ID 1 and assign it to a variable named 'thuthi'
thuthi = User.find(1)

# Create a car associated with this user
Car.create!(
  user: thuthi,
  brand: 'Toyota',
  model: 'Camry',
  year_of_production: 2020,
  address: '123 Main St',
  price_per_day: 30.00,
  color: 'Blue',
  image_urls: 'No image available',  # Placeholder text
  transmission: 'Automatic',
  mileage: 15000,
  seats: 5,
  fuel_type: 'Gasoline'
)

puts "Created a car for user #{thuthi.email}"
