# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaing database..."
Artwork.destroy_all
User.destroy_all

#create a user
userone = User.create!(name:"joe", email:"wget@gmail.com", 
password: "123456")

puts "create database"
art = Artwork.create!(name:"vic", description:"queen vic",
location: "London", price: 12.3, user:userone)

puts "finished"
