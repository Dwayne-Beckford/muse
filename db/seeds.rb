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
Artwork.destroy_all
User.destroy_all

puts "Creating a user..."
user = User.create!(email:"diana@test.com", name:"Diana", password:"123456")

puts "Creating artworks..."

3.times do
  Artwork.create!(
    name: "Mona Lisa",
    description: "Masterpiece",
    price: rand(100..500),
    user: user
  )
end

puts "Done! 🎨"
