require "open-uri"


Review.destroy_all
Tour.destroy_all
Booking.destroy_all
User.destroy_all


puts "✅ Creating guides users"
romain = User.create!(first_name: "Romain", last_name: "Géricot", password: "azerty", role: 0, description: "I lived all around the world, come to discorver it with me", email: "romain@gmail.com")
jerome = User.create!(first_name: "Jérôme", last_name: "Toulouse", password: "azerty", role: 0, description: "Ask me everything you need about colors, forms and CSS .... but never about bootstrap", email: "jerome@gmail.com")
edouard = User.create!(first_name: "Edouard", last_name: "Couter", password: "azerty", role:0, description: "If you want to play tennis, call me!", email: "edouard@gmail.com")
fabiola = User.create!(first_name: "Fabiola", last_name: "Camargo", password: "azerty", role: 0, description: "If you want to eat come with me", email: "fabiola@gmail.com")

puts "✅ Creating user"
jojo = User.create!(first_name: "Jonathan", last_name: "Serafini", password: "azerty", role: 1, description: "I want to travel again!!!", email: "jonathan@gmail.com")

puts "✅ Creating tours"
afrique = Tour.create!(name: "Kruger National Park safari", city: "Kruger National Park", country: "South Africa", capacity: 10, date: Date.new(2020, 7, 29), duration: 120, language: "french", user: romain, price: 25, category: "safari", time: Time.now)
arcachon = Tour.create!(name: "Le tour d'arcachon", city: "Arcachon", country: "France", capacity: 8, date: Date.new(2020, 8, 25), duration: 60, language: "french", user: jerome, price: 10, category: "mer", time: Time.now)
londres = Tour.create!(name: "Wimbledon", city: "Londres", country: "Anglaterre", capacity: 8, date: Date.new(2020, 8, 10), duration: 90, language: "french", user: edouard, price: 15, category: "sport", time: Time.now)
recife = Tour.create!(name: "Le brésil autrement", city: "Recife", country: "Brésil", capacity: 10, date: Date.new(2020, 10, 10), duration: 90, language: "french", user: fabiola, price: 10, category: "insolite", time: Time.now)

puts "✅ Adding photos to tours"
photo1_romain = URI.open("https://images.unsplash.com/photo-1561776138-b72e912b5187?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80.png")
photo2_romain = URI.open("https://images.unsplash.com/photo-1561776284-b741c036b32e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1663&q=80.png")
photo3_romain = URI.open("https://images.unsplash.com/photo-1561746983-0c4ff9b622d5?ixlib=rb-1.2.1&auto=format&fit=crop&w=1608&q=80.png")
afrique.images.attach(io: photo1_romain, filename: 'photo.png', content_type: 'image/png')
afrique.images.attach(io: photo2_romain, filename: 'photo.png', content_type: 'image/png')
afrique.images.attach(io: photo3_romain, filename: 'photo.png', content_type: 'image/png')
afrique.save!

photo1_jerome = URI.open("https://images.unsplash.com/photo-1589967127698-03987ca17cb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80.png")
arcachon.images.attach(io: photo1_jerome, filename: 'photo.png', content_type: 'image/png')
arcachon.save!

photo1_edouard = URI.open("https://images.unsplash.com/photo-1580763850690-44fd66eb2863?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80.png")
londres.images.attach(io: photo1_edouard, filename: 'photo.png', content_type: 'image/png')
londres.save!

photo1_fabiola = URI.open("https://images.unsplash.com/photo-1563455227142-d0f82238d6f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2782&q=80.png")
recife.images.attach(io: photo1_fabiola, filename: 'photo.png', content_type: 'image/png')
recife.save!
