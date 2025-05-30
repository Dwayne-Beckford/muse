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

file_three = File.open("app/assets/images/nighthawks.jpg")
art_three = Artwork.new(name: "Nighthawks", description: " Edward Hopper Late-night diner vibes, loneliness, and light that spills like a noir movie.", location: "The Art Institute of Chicago" , price: 34000,user: user)
art_three.photo.attach(io:file_three, filename: "nighthawks", content_type: "image/jpeg")
art_three.save
puts "Created 3"

file_four = File.open("app/assets/images/self portrait.jpeg")
art_four = Artwork.new(name: "Self portrait", description: "Frida Kahlo Frida fierce and fabulous, turning pain into power and petals.", location: "University of Texas at Austin. ", price: 20000, user: user)
art_four.photo.attach(io: file_four, filename: "self-portrait.jpeg", content_type: "image/jpeg")
art_four.save
puts "Created 4"

file_five = File.open("app/assets/images/the garden of earthly delights.jpeg")
art_five = Artwork.new(name: "The Garden of Earthly Delights", description: "Hieronymus Bosch Heaven, hell, and everything weird in between—like a medieval acid trip.", location: "Museo del Prado in Madrid ", price: 45000, user: user )
art_five.photo.attach(io: file_five, filename: "The Garden of Earthly Delights", content_type: "image/jpeg")
art_five.save
puts "Created 5"

file_six = File.open("app/assets/images/whistlermother.jpeg")
art_six = Artwork.new(name: "Whistler Mother", description: " James McNeill Whistler Mom sits like a queen of calm—modern minimalism before it was cool.", location: "Musée d'Orsay ", price: 60000, user: user)
art_six.photo.attach(io: file_six, filename: "whistlermother.jpeg", content_type: "image/jpeg")
art_six.save
puts "Created 6"

file_seven = File.open("app/assets/images/the last supper.jpeg")
art_seven = Artwork.new(name: "The Last Supper ", description: " Leonardo da Vinci
 The most dramatic dinner party in history—spoiler alert: betrayal's on the menu.", location: "milano", price: 100000 , user: user)
art_seven.photo.attach(io: file_seven, filename: "The Last Supper", content_type: "image/jpeg")
art_seven.save
puts "Created 7"

file_eight = File.open("app/assets/images/liberty leading the people.jpeg")
art_eight = Artwork.new(name: "Liberty Leading the People ", description: " Eugène Delacroix Freedom with a flag and a fierce face—don’t mess with Marianne.", location: "Louvre Museum ", price: 60000, user: user)
art_eight.photo.attach(io: file_eight, filename: "Liberty Leading the People", content_type: "image/jpeg")
art_eight.save
puts "Created 8"

file_nine = File.open("app/assets/images/lillies.jpg")
art_nine = Artwork.new(name: "Water Lilies", description: "Claude Monet Peaceful ponds that look like daydreams dipped in pastel.", location: "National Gallery, London.", price: 200000, user: user)
art_nine.photo.attach(io: file_nine, filename: "water lilies", content_type: "image/jpeg")
art_nine.save
puts "Created 9"

file_ten = File.open("app/assets/images/the night watch rembrandt .jpeg")
art_ten = Artwork.new(name: "The Night Watch ", description: "Rembrandt A Dutch militia squad ready for action... or at least a group portrait", location: " Amsterdam Museum", price: 180000, user: user)
art_ten.photo.attach(io: file_ten, filename: "The Night Watch", content_type: "image/jpeg")
art_ten.save
puts "Created 10"

file_eleven = File.open("app/assets/images/thekiss.jpeg")
art_eleven = Artwork.new(name: "The kiss", description: "The Kiss by Gustav Klimt A shimmering embrace covered in gold leaf—this romantic painting is all about love, luxury, and intimacy.", location: "Vienna ", price:11990 , user: user)
art_eleven.photo.attach(io: file_eleven, filename: "thekiss", content_type: "image/jpeg")
art_eleven.save
puts "Created 11"

file_twelve = File.open("app/assets/images/thescream.jpeg")
art_twelve = Artwork.new(name: "the scream", description: "The Scream by Edvard Munch A figure screams in horror as the world around them bends and warps—an iconic image of existential dread.", location: "National Museum in Oslo ", price: 199900, user: user)
art_twelve.photo.attach(io: file_twelve, filename: "thescream.jpeg", content_type: "image/jpeg")
art_twelve.save
puts "Created 12"

file_thirteen = File.open("app/assets/images/thebirth.jpeg")
art_thirteen = Artwork.new(name: "The Birth", description: "The Birth of Venus by Sandro Botticelli Venus emerges from a seashell like a goddess—grace, beauty, and mythological charm all in one.", location: " ", price:210000, user: user)
art_thirteen.photo.attach(io: file_thirteen, filename: "thebirth", content_type: "image/jpeg")
art_thirteen.save
puts "Created 13"

file_fourteen = File.open("app/assets/images/thegirlwithpearl.jpeg")
art_fourteen = Artwork.new(name: "The Girl with a Pearl Earring ", description: "The Girl with a Pearl Earring by Johannes Vermeer A mysterious, captivating portrait of a girl who seems to gaze at you with curiosity and secrets.", location: " Rijksmuseum ", price: 2000000 , user: user)
art_fourteen.photo.attach(io: file_fourteen, filename: "thegirlwithpearl", content_type: "image/jpeg")
art_fourteen.save
puts "Created 14"

file_fifteen = File.open("app/assets/images/creation.jpeg")
art_fifteen = Artwork.new(name: "the creation", description: "The Creation of Adam by Michelangelo Two outstretched hands almost touch, symbolizing the divine connection between God and man—classic biblical art at its most powerful.", location: "Sistine Chapel", price:109340, user: user)
art_fifteen.photo.attach(io: file_fifteen, filename: "the creation", content_type: "image/jpeg")
art_fifteen.save
puts "Created 15"

file_sixteen = File.open("app/assets/images/schoolofathens.jpeg")
art_sixteen = Artwork.new(name: "the school of athens", description: "The School of Athens by Raphael A dream team of ancient philosophers, gathered in a grand hall—Plato and Aristotle lead the pack, but everyone’s got something to say.", location: " Vatican City", price:450000, user: user)
art_sixteen.photo.attach(io: file_ten, filename: "the school of athens", content_type: "images/jpeg")
art_sixteen.save
puts "Created  16"

file_seventeen = File.open("app/assets/images/thehaywain.jpeg")
art_seventeen = Artwork.new(name: "the hay wain", description: "The Hay Wain by John Constable A peaceful countryside scene with a cart being pulled through a river, a bucolic vision of rural life that feels like a warm breeze.", location: "national gallery ", price: 300000, user: user)
art_seventeen.photo.attach(io: file_seventeen, filename: "the hay wain", content_type: "image/jpeg")
art_seventeen.save
puts "Created 17"

file_eighteen= File.open("app/assets/images/olympia.jpeg")
art_eighteen = Artwork.new(name: "Olympia", description: "Olympia by Édouard Manet A reclining nude that shocked the Parisian public—her gaze is direct, defiant, and full of attitude, breaking all the rules", location: "Musée d'Orsay, Paris. ", price: 200000 , user: user)
art_eighteen.photo.attach(io: file_eighteen, filename: "Olympia.jpeg", content_type: "image/jpeg")
art_eighteen.save
puts "Created 18"
file_nineteen = File.open("app/assets/images/girlwithredhat.jpeg")
art_nineteen= Artwork.new(name: "Girl with the red hat", description: "Girl with the Red Hat by Johannes Vermeer A quietly striking portrait of a young woman with a fashionable red hat—Vermeer’s mastery of light brings her to life with just a hint of mystery.", location: "National Gallery of Art, Washington, D.C", price: 450000 , user: user)
art_nineteen.photo.attach(io: file_nineteen, filename: "girl with red hat", content_type: "image/jpeg")
art_nineteen.save
puts "Created 19"

file_twenty = File.open("app/assets/images/arnolfini.jpeg")
art_twenty = Artwork.new(name: "The Arnolfini Portrait by Jan van Eyck A mysterious wedding scene where the couple stands frozen in time—check out the intricate details, from the chandelier to the dog!", description: "", location: "National gallery", price: 300000 , user: user)
art_twenty.photo.attach(io: file_twenty, filename: "arnolfini", content_type: "images/jpeg")
art_twenty.save
puts "Created 20"

# 3. Creating bookings
puts "Creating bookings..."

booking_one = Booking.create!(user: user, artwork: art_one, start_date: Date.today, end_date: Date.today)
puts "Created booking 1"

booking_two = Booking.create!(user: user, artwork: art_two, start_date: Date.today, end_date: Date.today)
puts "Created booking 2"

# 4. Display a message
puts "Finished! Created #{User.count} users, #{Artwork.count} artworks, and #{Booking.count} bookings."
