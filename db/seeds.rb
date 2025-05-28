# db/seeds.rb

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database
puts "Cleaning the database... 🗑️"
Booking.destroy_all
Artwork.destroy_all
User.destroy_all

puts "Creating a user..."
user = User.create!(email:"test@test.com", name:"Dave", password:"123456")

# 2. Creating artworks
puts "Creating artworks..."

art_one = Artwork.create!(name: "The Great Tower", description: "De Chirico picture", location: "The Pushkin Museum", price: 200, user: user)
puts "Created The Great Tower"

art_two = Artwork.create!(name: "Eclipse of the Sun", description: "inter-war Weimar painting", location: "Heckscher", price: 300, user: user)
puts "Created Eclipse of the Sun"

art_two = Artwork.create!(name: "The Starry Night", description: "Van Gogh's night sky", location: "Louvre, Paris", price: 300, user: user)
puts "Created Eclipse of the Sun"

# 3. Creating bookings
puts "create booking"

booking_one = Booking.create!(user: user, artwork: art_one, start_date: Date.today, end_date: Date.today)
puts "Created booking 1"

booking_two = Booking.create!(user: user, artwork: art_two, start_date: Date.today, end_date: Date.today)
puts "Created booking 2"

# 4. Display a message
puts "Finished! Created #{Artwork.count} artworks 🎨"
