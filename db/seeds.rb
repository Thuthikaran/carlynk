# db/seeds.rb

# Find the user with ID 1 and assign it to a variable named 'thuthi'
thuthi = User.find(1)

# Create or update a car associated with this user
Car.find_or_create_by!(
  user: thuthi,
  brand: 'Toyota',
  model: 'Camry',
  year_of_production: 2020,
  address: '123 Main St',
) do |car|
  car.price_per_day = 30.00
  car.color = 'Blue'
  car.image_urls = 'No image available'  # Placeholder text
  car.transmission = 'Automatic'
  car.mileage = 15000
  car.seats = 5
  car.fuel_type = 'Gasoline'
end

# Create or update additional cars
Car.find_or_create_by!(
  user: thuthi,
  brand: 'Honda',
  model: 'Civic',
  year_of_production: 2019,
  address: '456 Elm St'
) do |car|
  car.price_per_day = 25.00
  car.color = 'Red'
  car.image_urls = 'No image available'  # Placeholder text
  car.transmission = 'Manual'
  car.mileage = 20000
  car.seats = 4
  car.fuel_type = 'Diesel'
end

Car.find_or_create_by!(
  user: thuthi,
  brand: 'Ford',
  model: 'Focus',
  year_of_production: 2021,
  address: '789 Oak St'
) do |car|
  car.price_per_day = 35.00
  car.color = 'Black'
  car.image_urls = 'No image available'  # Placeholder text
  car.transmission = 'Automatic'
  car.mileage = 10000
  car.seats = 5
  car.fuel_type = 'Gasoline'
end

puts "Created or updated cars for user #{thuthi.email}"
