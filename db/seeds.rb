# db/seeds.rb

# Find the user with ID 1 and assign it to a variable named 'thuthi'
thuthi = User.find(1)

# Existing cars with unique Cloudinary images
Car.find_or_create_by!(
  user: thuthi,
  brand: 'Toyota',
  model: 'Camry',
  year_of_production: 2020
) do |car|
  car.address = '10 Rue de la République, 75001 Paris, France'
  car.price_per_day = 50.00
  car.color = 'Blue'
  car.image_urls = 'https://res.cloudinary.com/drxas1wpe/image/upload/v1722386703/2020-Toyota-Camry_pnjtow.png'
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
  car.image_urls = 'https://res.cloudinary.com/drxas1wpe/image/upload/v1722388423/2019-Honda-Civic-LX-Platinum-White-Pearl-HERO_rqxppc.png'
  car.transmission = 'Manual'
  car.mileage = 20000
  car.seats = 4
  car.fuel_type = 'Diesel'
end

Car.find_or_create_by!(
  user: thuthi,
  brand: 'BMW',
  model: '3 Series',
  year_of_production: 2022
) do |car|
  car.address = '25 Rue de Rivoli, 75001 Paris, France'
  car.price_per_day = 90.00
  car.color = 'Silver'
  car.image_urls = 'https://res.cloudinary.com/drxas1wpe/image/upload/v1722390003/bmw-3-series-sedan-lci-modelfinder_yfs6x0.png'
  car.transmission = 'Automatic'
  car.mileage = 8000
  car.seats = 5
  car.fuel_type = 'Gasoline'
end

Car.find_or_create_by!(
  user: thuthi,
  brand: 'Audi',
  model: 'A4',
  year_of_production: 2021
) do |car|
  car.address = '30 Avenue Montaigne, 75008 Paris, France'
  car.price_per_day = 85.00
  car.color = 'Gray'
  car.image_urls = 'https://res.cloudinary.com/drxas1wpe/image/upload/v1722389991/2d913b11-3ba5-4b24-b25e-c1c66a8bf8e6_cfdc5t.webp'
  car.transmission = 'Automatic'
  car.mileage = 12000
  car.seats = 5
  car.fuel_type = 'Diesel'
end

Car.find_or_create_by!(
  user: thuthi,
  brand: 'Mercedes-Benz',
  model: 'C-Class',
  year_of_production: 2023
) do |car|
  car.address = '40 Rue de la Paix, 75002 Paris, France'
  car.price_per_day = 100.00
  car.color = 'White'
  car.image_urls = 'https://res.cloudinary.com/drxas1wpe/image/upload/v1722389978/2023-mercedes-benz-c-class_2_b9q8ub.png'
  car.transmission = 'Automatic'
  car.mileage = 5000
  car.seats = 5
  car.fuel_type = 'Gasoline'
end

# Car.find_or_create_by!(
#   user: thuthi,
#   brand: 'Tesla',
#   model: 'Model 3',
#   year_of_production: 2023
# ) do |car|
#   car.address = '50 Rue du Faubourg Saint-Honoré, 75008 Paris, France'
#   car.price_per_day = 120.00
#   car.color = 'Black'
#   car.image_urls = 'https://res.cloudinary.com/drxas1wpe/image/upload/v1722389978/5622e9c0-90e7-4848-bba6-24e60940e327_b4xnyn.webp'
#   car.transmission = 'Automatic'
#   car.mileage = 2000
#   car.seats = 5
#   car.fuel_type = 'Electric'
# end

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
