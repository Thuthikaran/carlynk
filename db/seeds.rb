# db/seeds.rb

# Find the user with ID 1 and assign it to a variable named 'thuthi'
thuthi = User.find(1)

# Existing cars
Car.find_or_create_by!(
  user: thuthi,
  brand: 'Toyota',
  model: 'Camry',
  year_of_production: 2020
) do |car|
  car.address = '10 Rue de la République, 75001 Paris, France'
  car.price_per_day = 50.00
  car.color = 'Blue'
  car.image_urls = 'No image available'
  car.transmission = 'Automatic'
  car.mileage = 15000
  car.seats = 5
  car.fuel_type = 'Gasoline'
end

Car.find_or_create_by!(
  user: thuthi,
  brand: 'Honda',
  model: 'Civic',
  year_of_production: 2019
) do |car|
  car.address = '15 Boulevard Saint-Germain, 75005 Paris, France'
  car.price_per_day = 40.00
  car.color = 'Red'
  car.image_urls = 'No image available'
  car.transmission = 'Manual'
  car.mileage = 20000
  car.seats = 4
  car.fuel_type = 'Diesel'
end

Car.find_or_create_by!(
  user: thuthi,
  brand: 'Ford',
  model: 'Focus',
  year_of_production: 2021
) do |car|
  car.address = '20 Avenue des Champs-Élysées, 75008 Paris, France'
  car.price_per_day = 60.00
  car.color = 'Black'
  car.image_urls = 'No image available'
  car.transmission = 'Automatic'
  car.mileage = 10000
  car.seats = 5
  car.fuel_type = 'Gasoline'
end

# Additional cars

Car.find_or_create_by!(
  user: thuthi,
  brand: 'Mercedes-Benz',
  model: 'A-Class',
  year_of_production: 2020
) do |car|
  car.address = '5 Rue de la Montagne Sainte-Geneviève, 75005 Paris, France'
  car.price_per_day = 75.00
  car.color = 'White'
  car.image_urls = 'No image available'
  car.transmission = 'Automatic'
  car.mileage = 8000
  car.seats = 5
  car.fuel_type = 'Gasoline'
end

Car.find_or_create_by!(
  user: thuthi,
  brand: 'BMW',
  model: '3 Series',
  year_of_production: 2021
) do |car|
  car.address = '12 Place des Vosges, 75003 Paris, France'
  car.price_per_day = 85.00
  car.color = 'Grey'
  car.image_urls = 'No image available'
  car.transmission = 'Automatic'
  car.mileage = 6000
  car.seats = 5
  car.fuel_type = 'Diesel'
end

Car.find_or_create_by!(
  user: thuthi,
  brand: 'Volkswagen',
  model: 'Golf',
  year_of_production: 2019
) do |car|
  car.address = '7 Rue de l\'Université, 75007 Paris, France'
  car.price_per_day = 45.00
  car.color = 'Green'
  car.image_urls = 'No image available'
  car.transmission = 'Manual'
  car.mileage = 25000
  car.seats = 5
  car.fuel_type = 'Gasoline'
end

puts "Created or updated cars for user #{thuthi.email}"

# Create a user with the given details

# Create 4 more users

# Existing user
User.find_or_create_by!(email: "thuthi@mail.com") do |user|
  user.created_at = "2024-07-30 13:17:13"
  user.updated_at = "2024-07-30 13:17:13"
  user.password = "securepassword"  # Use a secure password
end

# Additional users
User.find_or_create_by!(email: "sahba@mail.com") do |user|
  user.created_at = "2024-07-30 14:00:00"
  user.updated_at = "2024-07-30 14:00:00"
  user.password = "securepassword1"  # Use a secure password
end

User.find_or_create_by!(email: "pedro@mail.com") do |user|
  user.created_at = "2024-07-30 15:00:00"
  user.updated_at = "2024-07-30 15:00:00"
  user.password = "securepassword2"  # Use a secure password
end

User.find_or_create_by!(email: "mark@mail.com") do |user|
  user.created_at = "2024-07-30 16:00:00"
  user.updated_at = "2024-07-30 16:00:00"
  user.password = "securepassword3"  # Use a secure password
end

User.find_or_create_by!(email: "jess@mail.com") do |user|
  user.created_at = "2024-07-30 17:00:00"
  user.updated_at = "2024-07-30 17:00:00"
  user.password = "securepassword4"  # Use a secure password
end
