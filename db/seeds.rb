require "open-uri"



Review.destroy_all
Booking.destroy_all
Checkpoint.destroy_all
Tour.destroy_all
User.destroy_all


puts "✅ Creating guides users"
romain = User.create!(first_name: "Romain", last_name: "Géricot", password: "azerty", role: 0, description: "Passionné de voyages, j'ai vécu une grande partie de ma vie à travers le monde. Si tu veux décourir le monde depuis ton canapé rejoins moi !", email: "romain@gmail.com")
jerome = User.create!(first_name: "Jérôme", last_name: "Toulouse", password: "azerty", role: 0, description: "Une envie de Voyage ? Tu peux compter sur moi pour t'accompagner !", email: "jerome@gmail.com")
edouard = User.create!(first_name: "Edouard", last_name: "Couten", password: "azerty", role:0, description: "Si tu veux jouer au tennis, tu peux compter sur moi !", email: "edouard@gmail.com")
fabiola = User.create!(first_name: "Fabiola", last_name: "Camargo", password: "azerty", role: 0, description: "Guide d'expérience de plus de 10 ans, vous me trouverez dans ma ville natale Bordeaux surtout dans le vieux quartier, place du palais ou rue St James avec un bon verre de vin. Passionée de Vin et de cuisine française, je vous invite à un parcours de la ville de Bordeaux pour contempler son architecture et sa culture. Dans le domaine du vin, je conduis en bus ou à pied des wine tours dans les régions viticoles de Bordeaux. Je commente entre autres le travail de la vigne, les cépages, les arômes, la notion de Bio et Biodynamie, l’histoire du vignoble Bordelais, les propriétés, les effets du réchauffement sur le vin. J’ai bénéficié d’une formation au CIVB qui me permet de parler du Vin avec aisance; maîtriser les accords mets et vins pour bien conseiller mes clients.", email: "fabiola@gmail.com")

puts "✅ Creating user"
jojo = User.create!(first_name: "Jonathan", last_name: "Serafini", password: "azerty", role: 1, description: "I want to travel again!!!", email: "jonathan@gmail.com")

puts "✅ Creating tours"


wagon = Tour.create!(name: "Le Tour des Chartrons", city: "Bordeaux", country: "France", capacity: 20, date: Date.new(2020, 6, 3), duration: 45, language: "Français", user: fabiola, price: 25, category: "Culture", time: Time.new(2020, 6, 3, 16, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Partez à la découverte du quartier des Chartrons, connu pour ses négociants de vin, c'est aujourd'hui un quartier cosmopolite & branché. Laissez-vous guider dans le quartier pour une balade historique à la découverte des lieux emblématiques et insolites du quartier. Du célèbre Jardin Public jusqu'au M.U.R de Bordeaux pour finir avec un peu de street art, les Chartrons est un endroit rempli de charme à l'ambiance d'un petit village qui saura vous dépayser.")
afrique = Tour.create!(name: "Le Parc National Kruger", city: "Kruger National Park", country: "Afrique du Sud", capacity: 10, date: Date.new(2020, 7, 10), duration: 120, language: "Français", user: romain, price: 25, category: "safari", time: Time.new(2020, 7, 10, 17, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Cette réserve naturelle impressionne par sa taille comparable à celle d’un petit pays. Ainsi, le parc Kruger s’étend sur deux provinces sud-africaines : celle du Limpopo et celle du Mpumalanga. Votre passage par le Mpumalanga se concrétisera certainement par un safari au Kruger. Il serait plus que dommage de voyager au cœur du Mpumalanga sans expérimenter le safari en Afrique du Sud, les paysages de savane et la faune sauvage y sont uniques au monde !")
arcachon = Tour.create!(name: "Le Tour d'Arcachon", city: "Arcachon", country: "France", capacity: 8, date: Date.new(2020, 8, 11), duration: 60, language: "Français", user: fabiola, price: 15, category: "mer", time: Time.new(2020, 8, 11, 15, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Vivez l’expérience insolite du Bassin d’Arcachon sous une vision unique ! Entre découverte et détente, cette escapade nature vous fera apprécier la lenteur pour contempler l’environnement magique du Bassin d’Arcachon. A vélo, en voilier ou à pied, laissez vous guider le temps d’un weekend sur les côtes de cet incontournable Girondin. ")
londres = Tour.create!(name: "Wimbledon", city: "Londres", country: "Angleterre", capacity: 8, date: Date.new(2020, 8, 2), duration: 90, language: "Français", user: edouard, price: 15, category: "sport", time: Time.new(2020, 8, 2, 13, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "La visite du Wimbledon Lawn Tennis Museum and Tour qui nous entraîne dans les coulisses du stade, sur le Court Central, le court n°1, dans la salle de conférences  et au musée du tennis est un passage incontournable pour tous sportifs  fans de tennis.")
recife = Tour.create!(name: "Le Brésil Autrement", city: "Recife", country: "Bresil", capacity: 10, date: Date.new(2020, 10, 10), duration: 90, language: "Français", user: romain, price: 10, category: "insolite", time: Time.new(2020, 10, 10, 13, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Recife est une destination touristique très importante du Brésil. Son architecture coloniale et ses plages paradisiaques attirent des milliers de visiteurs chaque année. Les touristes apprécient particulièrement l'eau turquoise qui borde la ville sur 40 km. Pour les visiteurs en quête de découverte, Recife possède une vieille ville fascinante. Ne manquez pas le fort de São Tiago das Cinco Pontas et les très nombreux édifices religieux, cathédrales, couvents, chapelles...")
vatican = Tour.create!(name: "Le Vatican", city: "Vatican", country: "Italie", capacity: 30, date: Date.new(2020, 7, 11), duration: 120, language: "Français", user: jerome, price: 20, category: "religion", time: Time.new(2020, 7, 11, 10, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Ce que je propose aux visiteurs peu habitués aux Musées, c’est une visite de 2 heures qui permet de découvrir en profondeur la Chapelle Sixtine et la Basilique Saint Pierre. Lorsque mes clients me demandent une visite de la Chapelle Sixtine, je propose toujours une formule qui leur permet de rester le plus possible à l’écart de la foule")
madrid = Tour.create!(name: "Santiago Bernabeu Stadium", city: "Madrid", country: "Espagne", capacity: 15, date: Date.new(2020, 7, 4), duration: 60, language: "Français", user: jerome, price: 20, category: "sport", time: Time.new(2020, 7, 4, 15, 30, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Découvrez l’histoire du Real Madrid grâce à une visite de son musée au sein du stade Santiago-Bernabéu. Obtenez un accès à des zones exclusives et découvrez la salle des trophées où les différentes coupes témoignent des prouesses du Real Madrid.")
hakone = Tour.create!(name: "Mont Fuji", city: "Hakone", country: "Japon", capacity: 8, date: Date.new(2020, 6, 11), duration: 120, language: "Français", user: jerome, price: 35, category: "Montagne", time: Time.new(2020, 6, 11, 14, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Visiter le Mont Fuji depuis Tokyo, ce n’est pas uniquement monter en haut d’un caillou et redescendre. La région est replète de lacs, de cascades, de forêts recouvertes de lave, de grottes et de villes où semble régner un autre temps. En raison des rigueurs des climats qui sévissent sur ses pentes – la température annuelle moyenne y est de -6,5°C et même en août et va de -18°C à +8°C – il est difficile et déconseillé de faire l’ascension du mont Fuji en dehors des mois de juillet et août.")
lima = Tour.create!(name: "Machu Picchu - sur le chemin des Incas", city: "Lima", country: "Perou", capacity: 15, date: Date.new(2020, 2, 4), duration: 180, language: "Français", user: jerome, price: 35, category: "Montagne", live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", time: Time.new(2020, 2, 4, 11, 0, 0), description: "Après une acclimatation dans la région d'Arequipa et du canyon de Colca, nous traversons l'altiplano jusqu'au lac Titicaca. Cette première partie du voyage nous permet de découvrir les multiples facettes de la riche culture andine péruvienne. La dernière partie du séjour se déroule dans la région de Cusco avec ses sites incas. Nous finirons sur le chemin de l'Inca nous permettant d'atteindre le mythique Machu Picchu à pied.")
nyc = Tour.create!(name: "Empire State Building ", city: "New York City", country: "USA", capacity: 7, date: Date.new(2020, 11, 10), duration: 60, language: "Français", user: edouard, price: 35, category: "culture", time: Time.new(2020, 11, 10, 15, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Quiconque visite New York se doit de visiter l’Empire State Building, il s’agit d’un passage obligatoire qui vous laissera de magnifiques souvenirs plein la tête. Aussi, vous pourrez notamment visiter les étages 86 et 102, où se trouvent les deux terrasses ouvertes au public. L’accès au 102 ème étage avec sa vue y est clairement inimitable. Vous y apercevrez toute la ville, mais également 5 états au total ! C’est très impressionnant")
húsavík = Tour.create!(name: "La Découverte des Baleines", city: "Húsavík", country: "Islande", capacity: 12, date: Date.new(2021, 2, 10), duration: 120, language: "Français", user: romain, price: 35, category: "Animaux", time: Time.new(2021, 2, 10, 12, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Prenez part à une sortie d’observation des baleines dans leur habitat naturel depuis Húsavík. Montez à bord d’un bateau en bois traditionnel islandais pour une aventure guidée de 3 h. Profitez de 97/100 à 99/100 de chances de voir des baleines !")
argentine = Tour.create!(name: "Buenos Aires - La reine de la Plata", city: "Buenos Aires", country: "Argentine", capacity: 8, date: Date.new(2021, 3, 1), duration: 120, language: "Français", user: edouard, price: 35, category: "culture",  time: Time.new(2021, 3, 1, 11, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Laissez-vous entrainer par le dynamisme de la capitale argentine, cité portée par une culture mêlant avec bonheur les influences européennes et africaines. Ce voyage à Buenos Aires est l’occasion de remonter aux origines du tango, tout en profitant d’une gastronomie réputée d’Amérique du Sud. De l’architecture coloniale du quartier historique de San Telmo au style plus moderne de la Place de Mai, découvrez une ambiance rythmée et joyeuse pour des souvenirs mémorables.")
sydney = Tour.create!(name: "Opéra de Sydney", city: "Sydney", country: "Australie", capacity: 10, date: Date.new(2021, 4, 10), duration: 60, language: "Anglais", user: edouard, price: 22, category: "Musique", time: Time.new(2021, 4, 10, 11, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Découvrez l'histoire et la magie de l'Opéra de Sydney lors d'une visite guidée de 1 h qui vous mènera dans les coulisses de ce bâtiment mondialement célèbre et à l'intérieur de ces salles de concert qui accueillent plus de 1 800 spectacles chaque année.")
moscou = Tour.create!(name: "Le Kremlin", city: "Moscou", country: "Russie", capacity: 12, date: Date.new(2021, 4, 8), duration: 60, language: "Anglais", user: edouard, price: 22, category: "Culture", time: Time.new(2021, 4, 8, 14, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Derrière ses tours et ses murs robustes se cachent des palais et des cathédrales, des bâtiments civils et d'autres trésors... Découvrez leurs secrets avec cette visite guidée du Kremlin. Nous nous retrouverons devant la Tour Kutafiya, porte d'entrée des monuments du Kremlin. Au cours de notre visite à travers cette gigantesque enceinte murée, nous découvrirons ses principaux points d'intérêt.")
huairou = Tour.create!(name: "La Muraille de Chine", city: "Huairou", country: "Chine", capacity: 25, date: Date.new(2021, 2, 9), duration: 120, language: "Français", user: romain, price: 22, category: "Culture", time: Time.new(2021, 2, 9, 10, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "La Grande Muraille de Chine est un passage quasi obligé pour quiconque vient visiter le pays. Sur 6 700 km, elle ondule à perte de vue. Vous pouvez visiter la Grande Muraille de Chine sur plusieurs tronçons : Badaling, site le plus touristique, Mutianyu, plus sauvage, ou Simatai, plus authentique. Vous pouvez aussi effectuer des randonnées le long de la Grande Muraille de Chine entre Simatai et Janshanling.")
rolandrarros = Tour.create!(name: "Roland Garros Stadium", city: "Paris", country: "France", capacity: 9, date: Date.new(2021, 2, 5), duration: 80, language: "Français", user: edouard, price: 18, category: "Sport", time: Time.new(2021, 2, 5, 18, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Depuis 1927, le stade Roland-Garros est le temple du tennis mondial sur terre battue. Situé à la lisière du bois de Boulogne, il accueille chaque année le troisième tournoi de tennis du Grand Chelem de l’année : les Internationaux de tennis de Roland-Garros. Les stars mondiales de la petite balle jaune foulent pendant deux semaines la fameuse terre ocre de l’un de ses 24 courts, dont le court central Philippe-Chatrier et le court Suzanne Lenglen.")
saopaulo = Tour.create!(name: "Sao Paulo - la Locomotive du Brésil", city: "Sao Paulo", country: "Bresil", capacity: 10, date: Date.new(2021, 6, 1), duration: 80, language: "Français", user: romain, price: 18, category: "Culture", time: Time.new(2021, 6, 1, 12, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Nous marcherons sur l’emblématique Avenue du 23 de Mayo en direction du quartier de la Liberdade. Ensuite, nous nous arrêterons une demi-heure à la Cathédrale de la Sé, l’un des cinq plus grands temples gothiques au monde ! Si vous pensez avoir vu l’ensemble des bâtiments les plus imposants de Sao Paulo, attendez de passer devant le Martinelli. Saviez-vous qu’il fut le premier gratte-ciel de la ville ? L’Hôtel de Ville, le Viaduc do chá et le Théâtre municipal font aussi partie de l’itinéraire.")
grandcanyon = Tour.create!(name: "Excursion au Grand Canyon", city: "Flagstaff", country: "USA", capacity: 10, date: Date.new(2021, 8, 12), duration: 60, language: "Français", user: romain, price: 18, category: "Aventure", time: Time.new(2021, 8, 12, 12, 30, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Découvrez d'anciennes ruines, des champs de lave et des volcans au cours de cette excursion dans le Grand Canyon.")
gizeh = Tour.create!(name: "Les Pyramides de Gizeh", city: "Gizeh", country: "Egypte", capacity: 12, date: Date.new(2020, 8, 12), duration: 120, language: "Français", user: romain, price: 25, category: "Culture", time: Time.new(2020, 8, 12, 16, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Explorez l’une des sept merveilles du monde antique. Apprenez-en davantage sur l’histoire des grandes pyramides de Gizeh et du Sphinx tout en admirant ces constructions spectaculaires lors de votre visite privée.")
saintemilion = Tour.create!(name: "Découverte du Vignoble Bordelais", city: "Saint-Émilion", country: "France", capacity: 12, date: Date.new(2020, 8, 12), duration: 180, language: "Français", user: fabiola, price: 35, category: "Culture", time: Time.new(2020, 8, 12, 15, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Le temps d’une journée ou d’une demi-journée, nous vous invitons à embarquer à bord d’une Citroën 2CV cabriolet et à prendre la route des plus grands vins de Bordeaux. Votre chauffeur-guide, vêtu d’une élégante marinière Saint-James, vous fera découvrir les vignobles du Médoc, de Saint-Émilion ou de Pessac-Léognan")
capferret = Tour.create!(name: "Découverte du Village de l'Herbe", city: "Cap-Ferret", country: "France", capacity: 12, date: Date.new(2020, 7, 6), duration: 180, language: "Français", user: fabiola, price: 35, category: "Culture", time: Time.new(2020, 6, 12, 11, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Un village authentique . Une chappelle insolite et un quartier ostréicoleaux airs de cartes postales : des ruelles colorées et tellement pleines de vie.")


puts "✅ Adding photo to User Guide"
photo = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679745/Fabiola_mdryvk.jpg")
fabiola.photo.attach(io: photo, filename: 'photo.jpeg', content_type: 'image/jpeg')
fabiola.save!

photo = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593686645/hHwcpdlQ_rsmwux.jpg")
jerome.photo.attach(io: photo, filename: 'photo.jpeg', content_type: 'image/jpeg')
jerome.save!

photo = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593686734/NNQcJp8A_fa8ur1.jpg")
romain.photo.attach(io: photo, filename: 'photo.jpeg', content_type: 'image/jpeg')
romain.save!

photo = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593686791/Uqb4LbUg_fmru7n.jpg")
edouard.photo.attach(io: photo, filename: 'photo.jpeg', content_type: 'image/jpeg')
edouard.save!


puts "✅ Adding photos to tours"
photo1_romain = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679751/Safari3_xvd22f.jpg")
photo2_romain = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679751/Safari1_h6pxey.jpg")
photo3_romain = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679751/Safari2_dm5b0u.jpg")
afrique.images.attach(io: photo1_romain, filename: 'photo.jpeg', content_type: 'image/jpeg')
afrique.images.attach(io: photo2_romain, filename: 'photo.png', content_type: 'image/png')
afrique.images.attach(io: photo3_romain, filename: 'photo.png', content_type: 'image/png')
afrique.save!

photo4_romain = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679752/SaoPaulo2_xampv8.jpg")
photo5_romain = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679752/SaoPaulo3_qyf9c7.jpg")
photo6_romain = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679752/SaoPaulo1_qgqgfp.jpg")
saopaulo.images.attach(io: photo4_romain, filename: 'photo.jpeg', content_type: 'image/jpeg')
saopaulo.images.attach(io: photo5_romain, filename: 'photo.png', content_type: 'image/png')
saopaulo.images.attach(io: photo6_romain, filename: 'photo.png', content_type: 'image/png')
saopaulo.save!

photo7_romain = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679746/GrandCanyon_ewy1xk.jpg")
photo8_romain = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679746/GrandCanyon1_mefoq6.jpg")
photo9_romain = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679746/GrandCanyon2_dxcgp6.jpg")
grandcanyon.images.attach(io: photo7_romain, filename: 'photo.jpeg', content_type: 'image/jpeg')
grandcanyon.images.attach(io: photo8_romain, filename: 'photo.png', content_type: 'image/png')
grandcanyon.images.attach(io: photo9_romain, filename: 'photo.png', content_type: 'image/png')
grandcanyon.save!

photo10_romain = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679745/Gizeh_hw1btl.jpg")
photo11_romain = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679745/Gizeh1_hyxme9.jpg")
photo12_romain = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679746/Gizeh2_wvylfo.jpg")
gizeh.images.attach(io: photo10_romain, filename: 'photo.jpeg', content_type: 'image/jpeg')
gizeh.images.attach(io: photo11_romain, filename: 'photo.png', content_type: 'image/png')
gizeh.images.attach(io: photo12_romain, filename: 'photo.png', content_type: 'image/png')
gizeh.save!

fabiola1 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679744/Arcachon1_a4l3fl.jpg")
fabiola2 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679744/Arcachon2_mb54dq.jpg")
fabiola3 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679743/Arcachon_rnouyb.jpg")
arcachon.images.attach(io: fabiola1, filename: 'photo.jpeg', content_type: 'image/jpeg')
arcachon.images.attach(io: fabiola2, filename: 'photo.png', content_type: 'image/png')
arcachon.images.attach(io: fabiola3, filename: 'photo.png', content_type: 'image/png')
arcachon.save!

fabiola4 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679751/Saintemilion_xnw4nw.jpg")
fabiola5 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679751/Saintemilion1_pe7kad.jpg")
fabiola6 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679751/Saintemilion2_rzg3yw.jpg")
saintemilion.images.attach(io: fabiola4, filename: 'photo.jpeg', content_type: 'image/jpeg')
saintemilion.images.attach(io: fabiola5, filename: 'photo.png', content_type: 'image/png')
saintemilion.images.attach(io: fabiola6, filename: 'photo.png', content_type: 'image/png')
saintemilion.save!


photo2_jerome = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679753/Vatican1_nqlmx4.jpg")
photo9_jerome = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679753/Vatican_s2asin.jpg")
photo10_jerome = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679753/Vatican2_k5mbrg.jpg")
vatican.images.attach(io: photo2_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
vatican.images.attach(io: photo9_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
vatican.images.attach(io: photo10_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
vatican.save!

photo3_jerome = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679746/Hakone_ucjhf5.jpg")
photo11_jerome = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679746/Hakone1_ar0p3j.jpg")
photo12_jerome = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679747/Hakone2_odvdn6.jpg")
hakone.images.attach(io: photo3_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
hakone.images.attach(io: photo11_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
hakone.images.attach(io: photo12_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
hakone.save!

photo4_jerome = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679749/MachuPicchu_xccbwl.jpg")
photo7_jerome = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679748/MacchuPicchu1_qsmnyx.jpg")
photo8_jerome = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679748/MachuPicchu2_onmbrb.jpg")
lima.images.attach(io: photo4_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
lima.images.attach(io: photo7_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
lima.images.attach(io: photo8_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
lima.save!

photo1_edouard = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679754/Wimbledon2_dxzxxf.jpg")
photo11_edouard = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679754/Wimbledon3_vf7orm.jpg")
photo12_edouard = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679753/Wimbledon1_t3kjdy.jpg")
londres.images.attach(io: photo1_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
londres.images.attach(io: photo11_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
londres.images.attach(io: photo12_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
londres.save!

photo2_edouard = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679749/RealMadrid_oqamdr.jpg")
photo9_edouard = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679749/RealMadrid1_ec18ev.jpg")
photo10_edouard = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679749/RealMadrid2_vetuz6.jpg")
madrid.images.attach(io: photo2_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
madrid.images.attach(io: photo9_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
madrid.images.attach(io: photo10_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
madrid.save!

photo3_edouard = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679752/USA_fbhnnn.jpg")
photo5_edouard = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679753/USA2_hauyq9.jpg")
photo6_edouard = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679753/USA1_rbohiz.jpg")
nyc.images.attach(io: photo3_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
nyc.images.attach(io: photo5_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
nyc.images.attach(io: photo6_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
nyc.save!

<<<<<<< HEAD
photo4_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593095815/richard-sagredo-ZC2PWF4jTHc-unsplash_gb5nfm.jpg")
photo7_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593528084/m93id755fy8soif0mfd1kgm23mlp.jpg")
photo8_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593174689/todd-cravens-lwACYK8ScmA-unsplash_lc1kji.jpg")
húsavík.images.attach(io: photo4_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
húsavík.images.attach(io: photo7_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
húsavík.images.attach(io: photo8_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
=======
romain75 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679747/Husavik_p103v3.jpg")
romain76 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679747/Husavik1_vfvtua.jpg")
romain77 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679748/Husavik3_zxftpu.jpg")
húsavík.images.attach(io: romain75, filename: 'photo.jpeg', content_type: 'image/jpeg')
húsavík.images.attach(io: romain76, filename: 'photo.jpeg', content_type: 'image/jpeg')
húsavík.images.attach(io: romain77, filename: 'photo.jpeg', content_type: 'image/jpeg')
>>>>>>> 3879bd94459c590789e4676801eb2823798d648a
húsavík.save!

romain51 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679749/Recife1_es0mrb.jpg")
romain52 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679750/Recife3_vrelor.jpg")
romain53 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679751/Recifejpg_xgowrt.jpg")
recife.images.attach(io: romain51,  filename: 'photo.jpeg', content_type: 'image/jpeg')
recife.images.attach(io: romain52, filename: 'photo.jpeg', content_type: 'image/jpeg')
recife.images.attach(io: romain53, filename: 'photo.jpeg', content_type: 'image/jpeg')
recife.save!

edouard4 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679744/BuenosAires_clnzk7.jpg")
edouard5 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679745/BuenosAIres1_nmpv30.jpg")
edouard6 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679720/BuenosAires2_yftnxd.jpg")
argentine.images.attach(io: edouard4, filename: 'photo.jpeg', content_type: 'image/jpeg')
argentine.images.attach(io: edouard5, filename: 'photo.jpeg', content_type: 'image/jpeg')
argentine.images.attach(io: edouard6, filename: 'photo.jpeg', content_type: 'image/jpeg')
argentine.save!

edouard7 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679752/Sydney_hplwhy.jpg")
edouard8= URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679752/Sydney1_aa1cyr.jpg")
edouard9 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679752/Sydney2_h7b7yo.jpg")
sydney.images.attach(io: edouard7, filename: 'photo.jpeg', content_type: 'image/jpeg')
sydney.images.attach(io: edouard8, filename: 'photo.jpeg', content_type: 'image/jpeg')
sydney.images.attach(io: edouard9, filename: 'photo.jpeg', content_type: 'image/jpeg')
sydney.save!

edouard10 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679748/Kremlin_gzrttf.jpg")
edouard11 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679748/Kremlin1_qtxobs.jpg")
edouard12= URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679749/Kremlin2_po0hbi.jpg")
moscou.images.attach(io: edouard10, filename: 'photo.jpeg', content_type: 'image/jpeg')
moscou.images.attach(io: edouard11, filename: 'photo.jpeg', content_type: 'image/jpeg')
moscou.images.attach(io: edouard12, filename: 'photo.jpeg', content_type: 'image/jpeg')
moscou.save!

romain13 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679747/Huairou_nlfwrk.jpg")
romain14 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679747/Huairou1_fcw5kb.jpg")
romain15= URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679747/Huairou2_ck6l5j.jpg")
huairou.images.attach(io: romain13, filename: 'photo.jpeg', content_type: 'image/jpeg')
huairou.images.attach(io: romain14, filename: 'photo.jpeg', content_type: 'image/jpeg')
huairou.images.attach(io: romain15, filename: 'photo.jpeg', content_type: 'image/jpeg')
huairou.save!

edouard16 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679750/Roland_Garros1_cj9m1b.jpg")
edouard17 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679750/Roland_Garros_abaxwn.jpg")
edouard18 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679750/RolandGarros2_szzd5a.jpg")
rolandrarros.images.attach(io: edouard16, filename: 'photo.jpeg', content_type: 'image/jpeg')
rolandrarros.images.attach(io: edouard17, filename: 'photo.jpeg', content_type: 'image/jpeg')
rolandrarros.images.attach(io: edouard18, filename: 'photo.jpeg', content_type: 'image/jpeg')
rolandrarros.save!

fabiola7 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679745/Cap-Ferret_dunyyk.jpg")
fabiola8 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679745/Capferret1_q7swyc.jpg")
fabiola9 = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679745/Capferret_bbormu.jpg")
capferret.images.attach(io: fabiola7, filename: 'photo.jpeg', content_type: 'image/jpeg')
capferret.images.attach(io: fabiola8, filename: 'photo.png', content_type: 'image/png')
capferret.images.attach(io: fabiola9, filename: 'photo.png', content_type: 'image/png')
capferret.save!


puts "✅ Adding photos to tours"

photo1_fabiola = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593692707/vince-gx-WuOeUt-emsk-unsplash_qipfcq.jpg")
photo2_fabiola = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679744/Bordeauxmuse%CC%81e3_fogvzv.jpg")
photo3_fabiola = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679744/Bordeauxmuse%CC%81e1_tuo96f.jpg")
photo4_fabiola = URI.open("https://res.cloudinary.com/dlwpvvdub/image/upload/v1593679744/Bordeauxmuse%CC%81e_eoqztc.jpg")
wagon.images.attach(io: photo1_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
wagon.images.attach(io: photo2_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
wagon.images.attach(io: photo3_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
wagon.images.attach(io: photo4_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
wagon.save!

puts "✅ Checkpoint"
c1 = Checkpoint.create!(name: "Le Wagon", progress: 0, tour: wagon, address: "107 Cours Balguerie Stuttenberg, 33300 Bordeaux", description: "The best bootcamp ever!")
c2 = Checkpoint.create!(name: "Galerie ouverte", progress: 0, tour: wagon, address:"7 Rue André Darbon, Bordeaux", description: "Cette galerie, dans le prolongement du faubourg des arts, est un espace couvert, un repère, tant depuis les quais des Chartrons que depuis le cœur de la ZAC. Il s’agit d’une place urbaine, un espace de rencontres, d’événements liés aux thèmes de l’art, de l’artisanat, du théâtre et du vin.")
c3 = Checkpoint.create!(name: "Musée du vin et du négoce de Bordeaux", progress: 0, tour: wagon, address: "41 Rue Borie, 33000 Bordeaux", description: "Dans l’immeuble du courtier royal de Louis XV, découvrez trois siècles d’histoire et de renommée des grands vins de Bordeaux. Les caves voutées, baties en 1720, retracent le travail des tonneliers et l’élevage du vin en barriques dans la tradition des négociants éleveurs du XIXème siècle.")
c4 = Checkpoint.create!(name: "Eglise Saint-Louis des Chartrons", progress: 0, tour: wagon, address: "51 Rue Notre Dame, 33000 Bordeaux", description: "L'église Saint-Louis-des-Chartronsest dédiée à saint Louis et dépend de l'archidiocèse de Bordeaux. Cette église néo-gothique présente une façade très verticale en trois parties, ornée d'une rosace, avec deux tours à hautes flèches, de 58 mètres2, et un vaisseau massif. Son plan est en croix latine. Elle mesure 60,35 mètres de longueur pour 23 mètres de largeur et 22,26 mètres de hauteur de voûtes2. Le pignon est orné d'une statue de saint Louis de Louis Coëffard de Mazerolles (1818-1887). Ses tours en font l'église la plus haute de Bordeaux.")
c5 = Checkpoint.create!(name: "CAPC Musée d'art contemporain", progress: 0, tour: wagon, address: "7 Rue Ferrere, 33000 Bordeaux", description: "Le CAPC musée d'art contemporain de Bordeaux, anciennement Centre d'arts plastiques contemporains (CAPC) de Bordeaux, est le musée d'art contemporain de Bordeaux inauguré en 1983 dans l'ancien Entrepôt Lainé.")

