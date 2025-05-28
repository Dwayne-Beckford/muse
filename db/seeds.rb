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


puts "Cleaning database..."
Booking.destroy_all
Artwork.destroy_all
User.destroy_all

puts "Creating a user..."
user = User.create!(email:"diana@test.com", name:"Diana",
  password:"123456")

puts "Creating artworks..."
  )
Artwork.create!(name: "The Great Tower", description: "De Chirico picture", location: "The Pushkin Museum", price: 7, user: user)
puts "Created The Great Tower"
puts "create booking"
book = Booking.create!(user: user, artwork: art,
  start_date: Date.today,
  end_date: Date.today)



puts "Done! 🎨"

# 1. Clean the database 🗑️
puts "Cleaning database ..."
# 2. Create the instances🏗
puts "Creating artworks ..."
Artwork.create!(name: "Eclipse of the Sun", description: "inter-war Weimar painting", location: "Heckscher", price: 4, user: user)
puts "Created Eclipse of the Sun"
Artwork.create!(name: "The Great Tower", description: "De Chirico picture", location: "The Pushkin Museum", price: 7, user: user)
puts "Created The Great Tower"

# 3. Display a message 🎉
puts "Finished! Created #{Artwork.count} artworks "
