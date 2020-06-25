require "open-uri"


Review.destroy_all
Booking.destroy_all
Tour.destroy_all
User.destroy_all


puts "✅ Creating guides users"
romain = User.create!(first_name: "Romain", last_name: "Géricot", password: "azerty", role: 0, description: "I lived all around the world, come to discorver it with me", email: "romain@gmail.com")
jerome = User.create!(first_name: "Jérôme", last_name: "Toulouse", password: "azerty", role: 0, description: "Ask me everything you need about colors, forms and CSS .... but never about bootstrap", email: "jerome@gmail.com")
edouard = User.create!(first_name: "Edouard", last_name: "Couten", password: "azerty", role:0, description: "If you want to play tennis, call me!", email: "edouard@gmail.com")
fabiola = User.create!(first_name: "Fabiola", last_name: "Camargo", password: "azerty", role: 0, description: "If you want to eat come with me", email: "fabiola@gmail.com")

puts "✅ Creating user"
jojo = User.create!(first_name: "Jonathan", last_name: "Serafini", password: "azerty", role: 1, description: "I want to travel again!!!", email: "jonathan@gmail.com")

puts "✅ Creating tours"
afrique = Tour.create!(name: "Kruger National Park safari", city: "Kruger National Park", country: "South Africa", capacity: 10, date: Date.new(2020, 7, 29), duration: 120, language: "french", user: romain, price: 25, category: "safari", time: Time.now)
arcachon = Tour.create!(name: "Le tour d'arcachon", city: "Arcachon", country: "France", capacity: 8, date: Date.new(2020, 8, 25), duration: 60, language: "french", user: jerome, price: 10, category: "mer", time: Time.now)
londres = Tour.create!(name: "Wimbledon", city: "Londres", country: "Angleterre", capacity: 8, date: Date.new(2020, 8, 10), duration: 90, language: "french", user: edouard, price: 15, category: "sport", time: Time.now)
recife = Tour.create!(name: "Le brésil autrement", city: "Recife", country: "Brésil", capacity: 10, date: Date.new(2020, 10, 10), duration: 90, language: "french", user: fabiola, price: 10, category: "insolite", time: Time.now)
vatican = Tour.create!(name: "Le vatican", city: "Vatican", country: "Italie", capacity: 30, date: Date.new(2020, 7, 11), duration: 90, language: "French", user: jerome, price: 20, category: "religion", time: Time.now)
madrid = Tour.create!(name: "Santiago Bernabeu Stadium", city: "madrid", country: "Espagne", capacity: 15, date: Date.new(2020, 7, 11), duration: 60, language: "French/Spanish", user: jerome, price: 20, category: "sport", time: Time.now)
hakone = Tour.create!(name: "Mont Fuji", city: "Hakone", country: "Japon", capacity: 8, date: Date.new(2020, 6, 11), duration: 120, language: "French/English", user: jerome, price: 35, category: "Montagne", time: Time.now)
pérou = Tour.create!(name: "Machu Picchu", city: "Lima", country: "Pérou", capacity: 15, date: Date.new(2020, 2, 10), duration: 120, language: "French/English", user: jerome, price: 35, category: "Montagne", time: Time.now)
nyc = Tour.create!(name: "Empire State Building ", city: "New York City", country: "USA", capacity: 7, date: Date.new(2020, 11, 10), duration: 60, language: "French/English", user: edouard, price: 35, category: "culture", time: Time.now)
húsavík = Tour.create!(name: "whale discovery", city: "Húsavík", country: "Islande", capacity: 12, date: Date.new(2021, 2, 10), duration: 120, language: "French/English", user: edouard, price: 35, category: "Animaux", time: Time.now)
argentine = Tour.create!(name: "Buenos Aires - La reine de la Plata", city: "Buenos Aires", country: "Argentine", capacity: 8, date: Date.new(2021, 3, 23), duration: 120, language: "English/Spanish", user: fabiola, price: 35, category: "culture", time: Time.now)
sydney = Tour.create!(name: "Opéra de Sydney", city: "Sydney", country: "Australie", capacity: 10, date: Date.new(2021, 4, 23), duration: 60, language: "English", user: fabiola, price: 22, category: "Musique", time: Time.now)
moscou = Tour.create!(name: "Le Kremlin", city: "Moscou", country: "Russie", capacity: 12, date: Date.new(2021, 4, 14), duration: 60, language: "English", user: fabiola, price: 22, category: "Culture", time: Time.now)
huairou = Tour.create!(name: "La Muraille de Chine", city: "Huairou", country: "Chine", capacity: 25, date: Date.new(2021, 2, 19), duration: 120, language: "English/French", user: fabiola, price: 22, category: "Culture", time: Time.now)
rolandrarros = Tour.create!(name: "Roland Garros Stadium", city: "Paris", country: "France", capacity: 9, date: Date.new(2021, 2, 1), duration: 80, language: "English/French", user: fabiola, price: 18, category: "Sport", time: Time.now, description: "Depuis 1927, le stade Roland-Garros est le temple du tennis mondial sur terre battue. Situé à la lisière du bois de Boulogne, il accueille chaque année le troisième tournoi de tennis du Grand Chelem de l’année : les Internationaux de tennis de Roland-Garros. Les stars mondiales de la petite balle jaune foulent pendant deux semaines la fameuse terre ocre de l’un de ses 24 courts, dont le court central Philippe-Chatrier et le court Suzanne Lenglen.")


puts "✅ Adding photos to tours"
photo1_romain = URI.open("https://images.pexels.com/photos/631317/pexels-photo-631317.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=375&w=630")
photo2_romain = URI.open("https://images.pexels.com/photos/4634620/pexels-photo-4634620.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=375&w=630")
photo3_romain = URI.open("https://images.unsplash.com/photo-1561746983-0c4ff9b622d5?ixlib=rb-1.2.1&auto=format&fit=crop&w=1608&q=80.png")
afrique.images.attach(io: photo1_romain, filename: 'photo.jpeg', content_type: 'image/jpeg')
afrique.images.attach(io: photo2_romain, filename: 'photo.png', content_type: 'image/png')
afrique.images.attach(io: photo3_romain, filename: 'photo.png', content_type: 'image/png')
afrique.save!

photo1_jerome = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593081255/r1idgpc4asnj30fuy1j7zuqxs4c8.jpg")
arcachon.images.attach(io: photo1_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
arcachon.save!
photo2_jerome = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593090112/caleb-miller-0Bs3et8FYyg-unsplash_fxc9sk.jpg")
vatican.images.attach(io: photo2_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
vatican.save!
photo3_jerome = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593093792/matheo-jbt-OI92O3Cw3nE-unsplash_ep8zy1.jpg")
hakone.images.attach(io: photo3_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
hakone.save!
photo4_jerome = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593094792/nad-hemnani-8xpklKrfsG4-unsplash_hzivd1.jpg")
pérou.images.attach(io: photo4_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
pérou.save!

photo1_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593092056/shep-mcallister-J1j3cImjmgE-unsplash_wt8p1x.jpg")
londres.images.attach(io: photo1_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
londres.save!
photo2_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593092503/vienna-reyes-LDuFjsin71k-unsplash_xur4sb.jpg")
madrid.images.attach(io: photo2_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
madrid.save!
photo3_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593095073/cathy-williams-iFc34ivN2HE-unsplash_me5oju.jpg")
nyc.images.attach(io: photo3_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
nyc.save!
photo4_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593095815/richard-sagredo-ZC2PWF4jTHc-unsplash_gb5nfm.jpg")
húsavík.images.attach(io: photo4_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
húsavík.save!

photo1_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593083310/thiago-japyassu-56p0SF7UqcI-unsplash_vataze.jpg")
recife.images.attach(io: photo1_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
recife.save!
photo2_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593096197/andrea-leopardi-z0A_IsZYXfM-unsplash_yo7kzo.jpg")
argentine.images.attach(io: photo2_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
argentine.save!
photo3_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593096547/vaun0815-13d6w4dztcM-unsplash_ccy1yw.jpg")
sydney.images.attach(io: photo3_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
sydney.save!
photo4_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593098810/felipe-simo-NvSYy0EEVfc-unsplash_pmmwdj.jpg")
moscou.images.attach(io: photo4_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
moscou.save!
photo5_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593099024/violette-filippini-VO8FNHLy8SI-unsplash_ubxqzd.jpg")
huairou.images.attach(io: photo5_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
huairou.save!
photo6_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593099557/erwan-hesry-uJ-OO3aZsSQ-unsplash_ppoivf.jpg")
rolandrarros.images.attach(io: photo6_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
rolandrarros.save!


puts "✅ Creating a booking"
b = Booking.new
b.tour = afrique
b.user = jojo
b.progress = 0
b.save!
