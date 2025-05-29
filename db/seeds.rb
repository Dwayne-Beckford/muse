# 1. Clean the database
puts "Cleaning the database... 🗑️"
Booking.destroy_all
Artwork.destroy_all
User.destroy_all

puts "Creating a user..."
user = User.create!(email:"test@test.com", name:"Dave", password:"123456")

# 2. Creating artworks
puts "Creating artworks..."

# First uploda images manually to our local storage via path app/assets/images
# Then we run the code below for each artwork
file = File.open("app/assets/images/Red-Fuji.jpeg")
art_one = Artwork.new(name: "Red Fuji", description: "Mountain", location: "Japan", price: 200, user: user)
art_one.photo.attach(io: file, filename: "Red-Fuji.jpeg", content_type: "image/jpg")
art_one.save
puts "Created Red Fuji"

file_two = File.open("app/assets/images/1968_001.webp")
art_two = Artwork.new(name: "Eclipse of the Sun", description: "Inter-war Weimar painting", location: "Heckscher", price: 300, user: user)
art_two.photo.attach(io: file_two, filename: "1968_001.webp", content_type: "image/webp")
art_two.save
puts "Created Eclipse of the Sun"

# 3. Creating bookings
puts "Creating bookings..."

booking_one = Booking.create!(user: user, artwork: art_one, start_date: Date.today, end_date: Date.today)
puts "Created booking 1"

booking_two = Booking.create!(user: user, artwork: art_two, start_date: Date.today, end_date: Date.today)
puts "Created booking 2"

# 4. Display a message
puts "Finished! Created #{User.count} users, #{Artwork.count} artworks, and #{Booking.count} bookings."
