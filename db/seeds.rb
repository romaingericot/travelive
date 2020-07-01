require "open-uri"


Review.destroy_all
Booking.destroy_all
Checkpoint.destroy_all
Tour.destroy_all
User.destroy_all


puts "✅ Creating guides users"
romain = User.create!(first_name: "Romain", last_name: "Géricot", password: "azerty", role: 0, description: "I lived all around the world, come to discorver it with me", email: "romain@gmail.com")
jerome = User.create!(first_name: "Jérôme", last_name: "Toulouse", password: "azerty", role: 0, description: "Ask me everything you need about colors, forms and CSS .... but never about bootstrap", email: "jerome@gmail.com")
edouard = User.create!(first_name: "Edouard", last_name: "Couten", password: "azerty", role:0, description: "If you want to play tennis, call me!", email: "edouard@gmail.com")
fabiola = User.create!(first_name: "Fabiola", last_name: "Camargo", password: "azerty", role: 0, description: "If you want to eat come with me", email: "fabiola@gmail.com")
nicolas = User.create!(first_name: "Nicolas", last_name: "Le wagon", password: "azerty", role: 0, description: "Quand je ne suis pas sur le bassin à admirer les magnifiques couchers de soleil de Pereire, vous me trouverez dans ma ville natale Bordeaux surtout dans le vieux quartier, place du palais ou rue St James avec un bon verre de vin.Je vis maintenant à Gujan-Mestras au pied du bassin d'Arcachon, une région magnifique, incontournable si vous êtes en visite sur Bordeaux.Je vous invite à une traversée saharienne sur les crêtes de la dune du Pilat d’où la vue est juste extraordinaire. Venez apprendre sa formation lente mais riche en occupation humaine à travers les siècles.Arcachon, c'est surtout son quartier historique de la ville d’hiver aux villas luxueuses dissimulées sous les pins. Vous y découvrirez différents styles architecturaux du néo-classique, suisse (tendance chalet), écossais (tendance manoir) et j'en passe. Dans le domaine du vin, je conduis en bus ou à pied des wine tours dans les régions viticoles de Bordeaux. Je commente entre autres le travail de la vigne, les cépages, les arômes, les maladies, la notion de Bio et Biodynamie, l’histoire du vignoble Bordelais, les propriétés, les effets du réchauffement sur le vin. J’ai bénéficié d’une formation au CIVB qui me permet de parler du Vin avec aisance; maîtriser les accords mets et vins, savoir conseiller mes clients.", email: "nicolas@gmail.com")

puts "✅ Creating user"
jojo = User.create!(first_name: "Jonathan", last_name: "Serafini", password: "azerty", role: 1, description: "I want to travel again!!!", email: "jonathan@gmail.com")

puts "✅ Creating tours"

wagon = Tour.create!(name: "Le Tour des Chartrons", city: "Bordeaux", country: "France", capacity: 20, date: Date.new(2020, 7, 3), duration: 45, language: "Français", user: fabiola, price: 25, category: "Culture", time: Time.new(2020, 7, 3, 19, 0, 0), live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Partez à la découverte du quartier des Chartrons, anciennement connu pour ses négociations de vin, c'est aujourd'hui un quartier cosmopolite & branché. Laissez-vous guider dans le quartier pour une balade historique à la découverte des lieux emblématiques et insolites du quartier. Du célèbre Jardin Public jusqu'au M.U.R de Bordeaux pour finir avec un peu de street art, les Chartrons est un endroit rempli de charme à l'ambiance de petit village qui saura vous dépayser.")
# afrique = Tour.create!(name: "Le Parc National Kruger", city: "Kruger National Park", country: "Afrique du Sud", capacity: 10, date: Date.new(2020, 7, 10), duration: 120, language: "Français", user: romain, price: 25, category: "safari", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Cette réserve naturelle impressionne par sa taille comparable à celle d’un petit pays. Ainsi, le parc Kruger s’étend sur deux provinces sud-africaines : celle du Limpopo et celle du Mpumalanga. Votre passage par le Mpumalanga se concrétisera certainement par un safari au Kruger. Il serait plus que dommage de voyager au cœur du Mpumalanga sans expérimenter le safari en Afrique du Sud, les paysages de savane et la faune sauvage y sont uniques au monde !")
# arcachon = Tour.create!(name: "Le tour d'arcachon", city: "Arcachon", country: "France", capacity: 8, date: Date.new(2020, 8, 11), duration: 60, language: "Français", user: nicolas, price: 15, category: "mer", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Vivez l’expérience insolite du Bassin d’Arcachon sous une vision unique ! Entre découverte et détente, cette escapade nature vous fera apprécier la lenteur pour contempler l’environnement magique du Bassin d’Arcachon. A vélo, en voilier ou à pied, laissez vous guider le temps d’un weekend sur les côtes de cet incontournable Girondin. ")
# londres = Tour.create!(name: "Wimbledon", city: "Londres", country: "Angleterre", capacity: 8, date: Date.new(2020, 8, 2), duration: 90, language: "Français", user: edouard, price: 15, category: "sport", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "La visite du Wimbledon Lawn Tennis Museum and Tour qui nous entraîne dans les coulisses du stade, sur le Court Central, le court n°1, dans la salle de conférences  et au musée du tennis est un passage incontournable pour tous sportifs  fans de tennis.")
# recife = Tour.create!(name: "Le brésil autrement", city: "Recife", country: "Bresil", capacity: 10, date: Date.new(2020, 10, 10), duration: 90, language: "Français", user: fabiola, price: 10, category: "insolite", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Recife est une destination touristique très importante du Brésil. Son architecture coloniale et ses plages paradisiaques attirent des milliers de visiteurs chaque année. Les touristes apprécient particulièrement l'eau turquoise qui borde la ville sur 40 km. Pour les visiteurs en quête de découverte, Recife possède une vieille ville fascinante. Ne manquez pas le fort de São Tiago das Cinco Pontas et les très nombreux édifices religieux, cathédrales, couvents, chapelles...")
# vatican = Tour.create!(name: "Le vatican", city: "Vatican", country: "Italie", capacity: 30, date: Date.new(2020, 7, 11), duration: 120, language: "Français", user: jerome, price: 20, category: "religion", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Ce que je propose aux visiteurs peu habitués aux Musées, c’est une visite de 2 heures qui permet de découvrir en profondeur la Chapelle Sixtine et la Basilique Saint Pierre. Lorsque mes clients me demandent une visite de la Chapelle Sixtine, je propose toujours une formule qui leur permet de rester le plus possible à l’écart de la foule")
# madrid = Tour.create!(name: "Santiago Bernabeu Stadium", city: "Madrid", country: "Espagne", capacity: 15, date: Date.new(2020, 7, 4), duration: 60, language: "Français", user: jerome, price: 20, category: "sport", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Découvrez l’histoire du Real Madrid grâce à une visite de son musée au sein du stade Santiago-Bernabéu. Obtenez un accès à des zones exclusives et découvrez la salle des trophées où les différentes coupes témoignent des prouesses du Real Madrid.")
# hakone = Tour.create!(name: "Mont Fuji", city: "Hakone", country: "Japon", capacity: 8, date: Date.new(2020, 6, 11), duration: 120, language: "Français", user: jerome, price: 35, category: "Montagne", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Visiter le Mont Fuji depuis Tokyo, ce n’est pas uniquement monter en haut d’un caillou et redescendre. La région est replète de lacs, de cascades, de forêts recouvertes de lave, de grottes et de villes où semble régner un autre temps. En raison des rigueurs des climats qui sévissent sur ses pentes – la température annuelle moyenne y est de -6,5°C et même en août et va de -18°C à +8°C – il est difficile et déconseillé de faire l’ascension du mont Fuji en dehors des mois de juillet et août.")
# lima = Tour.create!(name: "Machu Picchu - sur le chemin des Incas", city: "Lima", country: "Perou", capacity: 15, date: Date.new(2020, 2, 4), duration: 180, language: "Français", user: jerome, price: 35, category: "Montagne", live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", time: Time.now, description: "Après une acclimatation dans la région d'Arequipa et du canyon de Colca, nous traversons l'altiplano jusqu'au lac Titicaca. Cette première partie du voyage nous permet de découvrir les multiples facettes de la riche culture andine péruvienne. La dernière partie du séjour se déroule dans la région de Cusco avec ses sites incas. Nous finirons sur le chemin de l'Inca nous permettant d'atteindre le mythique Machu Picchu à pied.")
# nyc = Tour.create!(name: "Empire State Building ", city: "New York City", country: "USA", capacity: 7, date: Date.new(2020, 11, 10), duration: 60, language: "Français", user: edouard, price: 35, category: "culture", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Quiconque visite New York se doit de visiter l’Empire State Building, il s’agit d’un passage obligatoire qui vous laissera de magnifiques souvenirs plein la tête. Aussi, vous pourrez notamment visiter les étages 86 et 102, où se trouvent les deux terrasses ouvertes au public. L’accès au 102 ème étage avec sa vue y est clairement inimitable. Vous y apercevrez toute la ville, mais également 5 états au total ! C’est très impressionnant")
# húsavík = Tour.create!(name: "La découverte des Baleines", city: "Húsavík", country: "Islande", capacity: 12, date: Date.new(2021, 2, 10), duration: 120, language: "Français", user: edouard, price: 35, category: "Animaux", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Prenez part à une sortie d’observation des baleines dans leur habitat naturel depuis Húsavík. Montez à bord d’un bateau en bois traditionnel islandais pour une aventure guidée de 3 h. Profitez de 97/100 à 99/100 de chances de voir des baleines !")
# argentine = Tour.create!(name: "Buenos Aires - La reine de la Plata", city: "Buenos Aires", country: "Argentine", capacity: 8, date: Date.new(2021, 3, 1), duration: 120, language: "Français", user: fabiola, price: 35, category: "culture",  time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Laissez-vous entrainer par le dynamisme de la capitale argentine, cité portée par une culture mêlant avec bonheur les influences européennes et africaines. Ce voyage à Buenos Aires est l’occasion de remonter aux origines du tango, tout en profitant d’une gastronomie réputée d’Amérique du Sud. De l’architecture coloniale du quartier historique de San Telmo au style plus moderne de la Place de Mai, découvrez une ambiance rythmée et joyeuse pour des souvenirs mémorables")
# sydney = Tour.create!(name: "Opéra de Sydney", city: "Sydney", country: "Australie", capacity: 10, date: Date.new(2021, 4, 10), duration: 60, language: "Anglais", user: fabiola, price: 22, category: "Musique", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Découvrez l'histoire et la magie de l'Opéra de Sydney lors d'une visite guidée de 1 h qui vous mènera dans les coulisses de ce bâtiment mondialement célèbre et à l'intérieur de ces salles de concert qui accueillent plus de 1 800 spectacles chaque année.")
# moscou = Tour.create!(name: "Le Kremlin", city: "Moscou", country: "Russie", capacity: 12, date: Date.new(2021, 4, 8), duration: 60, language: "Anglais", user: fabiola, price: 22, category: "Culture", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Derrière ses tours et ses murs robustes se cachent des palais et des cathédrales, des bâtiments civils et d'autres trésors... Découvrez leurs secrets avec cette visite guidée du Kremlin. Nous nous retrouverons devant la Tour Kutafiya, porte d'entrée des monuments du Kremlin. Au cours de notre visite à travers cette gigantesque enceinte murée, nous découvrirons ses principaux points d'intérêt.")
# huairou = Tour.create!(name: "La Muraille de Chine", city: "Huairou", country: "Chine", capacity: 25, date: Date.new(2021, 2, 9), duration: 120, language: "Français", user: fabiola, price: 22, category: "Culture", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "La Grande Muraille de Chine est un passage quasi obligé pour quiconque vient visiter le pays. Sur 6 700 km, elle ondule à perte de vue. Vous pouvez visiter la Grande Muraille de Chine sur plusieurs tronçons : Badaling, site le plus touristique, Mutianyu, plus sauvage, ou Simatai, plus authentique. Vous pouvez aussi effectuer des randonnées le long de la Grande Muraille de Chine entre Simatai et Janshanling.")
# rolandrarros = Tour.create!(name: "Roland Garros Stadium", city: "Paris", country: "France", capacity: 9, date: Date.new(2021, 2, 5), duration: 80, language: "Français", user: fabiola, price: 18, category: "Sport", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Depuis 1927, le stade Roland-Garros est le temple du tennis mondial sur terre battue. Situé à la lisière du bois de Boulogne, il accueille chaque année le troisième tournoi de tennis du Grand Chelem de l’année : les Internationaux de tennis de Roland-Garros. Les stars mondiales de la petite balle jaune foulent pendant deux semaines la fameuse terre ocre de l’un de ses 24 courts, dont le court central Philippe-Chatrier et le court Suzanne Lenglen.")
# saopaulo = Tour.create!(name: "Sao Paulo - la Locomotive du Brésil", city: "Sao Paulo", country: "Bresil", capacity: 10, date: Date.new(2021, 6, 1), duration: 80, language: "Français", user: romain, price: 18, category: "Culture", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Nous marcherons sur l’emblématique Avenue du 23 de Mayo en direction du quartier de la Liberdade. Ensuite, nous nous arrêterons une demi-heure à la Cathédrale de la Sé, l’un des cinq plus grands temples gothiques au monde ! Si vous pensez avoir vu l’ensemble des bâtiments les plus imposants de Sao Paulo, attendez de passer devant le Martinelli. Saviez-vous qu’il fut le premier gratte-ciel de la ville ? L’Hôtel de Ville, le Viaduc do chá et le Théâtre municipal font aussi partie de l’itinéraire.")
# grandcanyon = Tour.create!(name: "Excursion au Grand Canyon", city: "Flagstaff", country: "USA", capacity: 10, date: Date.new(2021, 8, 12), duration: 60, language: "Français", user: romain, price: 18, category: "Aventure", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Découvrez d'anciennes ruines, des champs de lave et des volcans au cours de cette excursion dans le Grand Canyon.Visite du poste de traite historique de Cameron sur une réserve Navajo pour le déjeuner. La visite en petits groupes vous permet de poser facilement des questions à votre guide")
# gizeh = Tour.create!(name: "Les Pyramides de Gizeh", city: "Gizeh", country: "Egypte", capacity: 12, date: Date.new(2020, 8, 12), duration: 120, language: "Français", user: romain, price: 25, category: "Culture", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Explorez l’une des sept merveilles du monde antique. Apprenez-en davantage sur l’histoire des grandes pyramides de Gizeh et du Sphinx tout en admirant ces constructions spectaculaires lors de votre visite privée.")
# saintemilion = Tour.create!(name: "Découverte du Vignoble Bordelais", city: "Saint-Émilion", country: "France", capacity: 12, date: Date.new(2020, 8, 12), duration: 180, language: "Français", user: nicolas, price: 35, category: "Culture", time: Time.now, live_url: "https://travelive.daily.co/A10gZsu1NrLQxfd2wfgf", description: "Le temps d’une journée ou d’une demi-journée, nous vous invitons à embarquer à bord d’une Citroën 2CV cabriolet et à prendre la route des plus grands vins de Bordeaux.Votre chauffeur-guide, vêtu d’une élégante marinière Saint-James, vous fera découvrir les vignobles du Médoc, de Saint-Émilion ou de Pessac-Léognan")

# puts "✅ Adding photo to User Guide"
# photo = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:331818,c_fill,g_auto:face,r_8,w_560/v1593529846/4d6635_5af843813be9464ba3f6d3c2b95a889f_mv2_cnnrkl.jpg")
# nicolas.photo.attach(io: photo, filename: 'photo.jpeg', content_type: 'image/jpeg')
# nicolas.save!

# puts "✅ Adding photos to tours"
# photo1_romain = URI.open("https://images.pexels.com/photos/631317/pexels-photo-631317.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=375&w=630")
# photo2_romain = URI.open("https://images.pexels.com/photos/4634620/pexels-photo-4634620.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=375&w=630")
# photo3_romain = URI.open("https://images.unsplash.com/photo-1561746983-0c4ff9b622d5?ixlib=rb-1.2.1&auto=format&fit=crop&w=1608&q=80.png")
# afrique.images.attach(io: photo1_romain, filename: 'photo.jpeg', content_type: 'image/jpeg')
# afrique.images.attach(io: photo2_romain, filename: 'photo.png', content_type: 'image/png')
# afrique.images.attach(io: photo3_romain, filename: 'photo.png', content_type: 'image/png')
# afrique.save!

# photo4_romain = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593175772/samples/renan-araujo-TvCRYXwKhfQ-unsplash_v8qhqs.jpg")
# photo5_romain = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593175750/samples/vanessa-bumbeers-mHaNv8ajVis-unsplash_apcqls.jpg")
# photo6_romain = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593175731/samples/andy-falconer-pXuqNqSwLL0-unsplash_lmevnx.jpg")
# saopaulo.images.attach(io: photo4_romain, filename: 'photo.jpeg', content_type: 'image/jpeg')
# saopaulo.images.attach(io: photo5_romain, filename: 'photo.png', content_type: 'image/png')
# saopaulo.images.attach(io: photo6_romain, filename: 'photo.png', content_type: 'image/png')
# saopaulo.save!

# photo7_romain = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593176686/samples/christine-roy-XoU4TgZAM0s-unsplash_sqpemp.jpg")
# photo8_romain = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593176640/samples/jad-limcaco-JEq_2UJoTtg-unsplash_jfwrbc.jpg")
# photo9_romain = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593176617/samples/sam-loyd-Mg4TZbhjJ3M-unsplash_ictp5h.jpg")
# grandcanyon.images.attach(io: photo7_romain, filename: 'photo.jpeg', content_type: 'image/jpeg')
# grandcanyon.images.attach(io: photo8_romain, filename: 'photo.png', content_type: 'image/png')
# grandcanyon.images.attach(io: photo9_romain, filename: 'photo.png', content_type: 'image/png')
# grandcanyon.save!

# photo10_romain = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593178458/samples/l-n-TDzZtAR-Kug-unsplash_njgi4s.jpg")
# photo11_romain = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593178442/samples/joel-van-schoonhoven-pjD_KFLv7Fk-unsplash_nbrvov.jpg")
# photo12_romain = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593178429/samples/simon-berger-ph4vENj9AQk-unsplash_s68rfg.jpg")
# gizeh.images.attach(io: photo10_romain, filename: 'photo.jpeg', content_type: 'image/jpeg')
# gizeh.images.attach(io: photo11_romain, filename: 'photo.png', content_type: 'image/png')
# gizeh.images.attach(io: photo12_romain, filename: 'photo.png', content_type: 'image/png')
# gizeh.save!

# photo1_nicolas = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593081255/r1idgpc4asnj30fuy1j7zuqxs4c8.jpg")
# photo5_nicolas = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593163639/ben-vloon-MSkaRatXB3I-unsplash_et4oiu.jpg")
# photo6_nicolas = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593163694/julian-berengar-solter-twzfUdCDahs-unsplash_vrlmo4.jpg")
# arcachon.images.attach(io: photo1_nicolas, filename: 'photo.jpeg', content_type: 'image/jpeg')
# arcachon.images.attach(io: photo5_nicolas, filename: 'photo.png', content_type: 'image/png')
# arcachon.images.attach(io: photo6_nicolas, filename: 'photo.png', content_type: 'image/png')
# arcachon.save!

# photo2_nicolas = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593527135/jonathan-farber-3kJAGpZWR7E-unsplash_gudu4j.jpg")
# photo3_nicolas = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593527211/howard-bouchevereau-vHnQqO3TT4c-unsplash_ktmldv.jpg")
# photo4_nicolas = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593527253/kurt-cotoaga-fkCcgQkqRaA-unsplash_hwsw14.jpg")
# saintemilion.images.attach(io: photo2_nicolas, filename: 'photo.jpeg', content_type: 'image/jpeg')
# saintemilion.images.attach(io: photo3_nicolas, filename: 'photo.png', content_type: 'image/png')
# saintemilion.images.attach(io: photo4_nicolas, filename: 'photo.png', content_type: 'image/png')
# saintemilion.save!


# photo2_jerome = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593090112/caleb-miller-0Bs3et8FYyg-unsplash_fxc9sk.jpg")
# photo9_jerome = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593173838/berto-macario-Zsq-pTtwIUM-unsplash_1_effajm.jpg")
# photo10_jerome = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593173858/sins-s-O_WePoP4G_8-unsplash_nwxdkt.jpg")
# vatican.images.attach(io: photo2_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
# vatican.images.attach(io: photo9_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
# vatican.images.attach(io: photo10_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
# vatican.save!

# photo3_jerome = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593093792/matheo-jbt-OI92O3Cw3nE-unsplash_ep8zy1.jpg")
# photo11_jerome = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593174214/will-schulenberg-8yq9phH-ASA-unsplash_ieq7ld.jpg")
# photo12_jerome = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593174177/guillermo-perez-pjnXWMqtUXA-unsplash_pdkmmo.jpg")
# hakone.images.attach(io: photo3_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
# hakone.images.attach(io: photo11_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
# hakone.images.attach(io: photo12_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
# hakone.save!

# photo4_jerome = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593173590/willian-justen-de-vasconcellos-3DvIZQ0q7hM-unsplash_d9qhtc.jpg")
# photo7_jerome = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593094792/nad-hemnani-8xpklKrfsG4-unsplash_hzivd1.jpg")
# photo8_jerome = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593173580/jeremiah-berman-9dmycbFE7mQ-unsplash_fa96li.jpg")
# lima.images.attach(io: photo4_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
# lima.images.attach(io: photo7_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
# lima.images.attach(io: photo8_jerome, filename: 'photo.jpeg', content_type: 'image/jpeg')
# lima.save!

# photo1_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593092056/shep-mcallister-J1j3cImjmgE-unsplash_wt8p1x.jpg")
# photo11_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593175193/samples/carlo-bazzo-KgYMstXJJzA-unsplash_jn09c9.jpg")
# photo12_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593175206/samples/carlo-bazzo-nuj8hmbKLyw-unsplash_bwkidx.jpg")
# londres.images.attach(io: photo1_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
# londres.images.attach(io: photo11_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
# londres.images.attach(io: photo12_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
# londres.save!

# photo2_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593092503/vienna-reyes-LDuFjsin71k-unsplash_xur4sb.jpg")
# photo9_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593175021/samples/vienna-reyes-5X1y4fvpIV0-unsplash_kvjcxk.jpg")
# photo10_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593175031/samples/vienna-reyes-Zs_o1IjVPt4-unsplash_qpeskt.jpg")
# madrid.images.attach(io: photo2_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
# madrid.images.attach(io: photo9_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
# madrid.images.attach(io: photo10_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
# madrid.save!

# photo3_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593095073/cathy-williams-iFc34ivN2HE-unsplash_me5oju.jpg")
# photo5_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593174398/melanie-dretvic-URtR9YiLeR0-unsplash_p8kumk.jpg")
# photo6_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593174371/william-wachter-HLNLtyon-xg-unsplash_gy7n9a.jpg")
# nyc.images.attach(io: photo3_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
# nyc.images.attach(io: photo5_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
# nyc.images.attach(io: photo6_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
# nyc.save!

# photo4_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593095815/richard-sagredo-ZC2PWF4jTHc-unsplash_gb5nfm.jpg")
# photo7_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593174827/samples/max-gotts-AFg4iczGE9g-unsplash_zvq5gf.jpg")
# photo8_edouard = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593174689/todd-cravens-lwACYK8ScmA-unsplash_lc1kji.jpg")
# húsavík.images.attach(io: photo4_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
# húsavík.images.attach(io: photo7_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
# húsavík.images.attach(io: photo8_edouard, filename: 'photo.jpeg', content_type: 'image/jpeg')
# húsavík.save!

# photo1_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593083310/thiago-japyassu-56p0SF7UqcI-unsplash_vataze.jpg")
# photo17_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593164854/anderson-w-rangel-R5ZhGy-A8e4-unsplash_yhvavw.jpg")
# photo18_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593164869/thiago-japyassu-pZetlN0dtoM-unsplash_rvihyy.jpg")
# recife.images.attach(io: photo1_fabiola,  filename: 'photo.jpeg', content_type: 'image/jpeg')
# recife.images.attach(io: photo17_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# recife.images.attach(io: photo18_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# recife.save!

# photo2_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593096197/andrea-leopardi-z0A_IsZYXfM-unsplash_yo7kzo.jpg")
# photo15_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593164636/sasha-stories-VynkVKneWJA-unsplash_lp1pox.jpg")
# photo16_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593164624/fermin-rodriguez-penelas-r3muakP0QuE-unsplash_p4l5pv.jpg")
# argentine.images.attach(io: photo2_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# argentine.images.attach(io: photo15_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# argentine.images.attach(io: photo16_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# argentine.save!

# photo3_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593096547/vaun0815-13d6w4dztcM-unsplash_ccy1yw.jpg")
# photo11_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593164298/arvin-wiyono-einIuvtZen4-unsplash_rio6ws.jpg")
# photo12_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593164353/michael-lee-YhGQiKeSBLQ-unsplash_xh7kmu.jpg")
# sydney.images.attach(io: photo3_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# sydney.images.attach(io: photo11_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# sydney.images.attach(io: photo12_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# sydney.save!

# photo4_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593098810/felipe-simo-NvSYy0EEVfc-unsplash_pmmwdj.jpg")
# photo13_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593164476/michael-parulava-L4jrg4c7928-unsplash_zwy3xr.jpg")
# photo14_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593164448/michael-parulava-5V36D5JYcZA-unsplash_ccxct2.jpg")
# moscou.images.attach(io: photo4_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# moscou.images.attach(io: photo13_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# moscou.images.attach(io: photo14_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# moscou.save!

# photo5_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593099024/violette-filippini-VO8FNHLy8SI-unsplash_ubxqzd.jpg")
# photo9_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593164089/courtney-hall-6_JmApzvvMg-unsplash_jldh6o.jpg")
# photo10_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593164078/ashley-ross-AyUH7XHZUBQ-unsplash_rawenn.jpg")
# huairou.images.attach(io: photo5_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# huairou.images.attach(io: photo9_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# huairou.images.attach(io: photo10_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# huairou.save!

# photo6_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593099557/erwan-hesry-uJ-OO3aZsSQ-unsplash_ppoivf.jpg")
# photo7_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593163858/siamak-YpIxNnG1vC4-unsplash_nhraqx.jpg")
# photo8_fabiola = URI.open("https://res.cloudinary.com/dzghetxbv/image/upload/v1593163851/moises-alex-WqI-PbYugn4-unsplash_e7wibz.jpg")
# rolandrarros.images.attach(io: photo6_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# rolandrarros.images.attach(io: photo7_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# rolandrarros.images.attach(io: photo8_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
# rolandrarros.save!


puts "✅ Adding photos to tours"

photo1_fabiola = URI.open("http://marketing-digital.audencia.com/wp-content/uploads/2017/03/Le-wagon.jpg")
photo2_fabiola = URI.open("https://medias.otbor.vm.aiprod.com/780x490/PCUAQU033FS000Q1/1-Musee-du-Vin-et-du-Negoce--C.Pamelard---2-.jpg")
photo3_fabiola = URI.open("https://fr.wikipedia.org/wiki/%C3%89glise_Saint-Louis-des-Chartrons_(Bordeaux)#/media/Fichier:Bordeaux_Saint-Louis.jpg")
photo4_fabiola = URI.open("https://images.sudouest.fr/2019/02/14/5c64d4c166a4bd8e0f5ac1fd/widescreen/1000x500/theoriquement-la-nouvelle.jpg")
wagon.images.attach(io: photo1_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
wagon.images.attach(io: photo2_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
wagon.images.attach(io: photo3_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
wagon.images.attach(io: photo4_fabiola, filename: 'photo.jpeg', content_type: 'image/jpeg')
wagon.save!

puts "✅ Checkpoint"
c1 = Checkpoint.create!(name: "Le Wagon", progress: 0, tour: wagon, address: "107 Cours Balguerie Stuttenberg, 33300 Bordeaux", description: "The best bootcamp ever!")
c2 = Checkpoint.create!(name: "Galerie ouverte", progress: 0, tour: wagon, address:"7, Rue André Darbon, Bordeaux", description: "Cette galerie, dans le prolongement du faubourg des arts, est un espace couvert, un repère, tant depuis les quais des Chartrons que depuis le cœur de la ZAC. Il s’agit d’une place urbaine, un espace de rencontres, d’événements liés aux thèmes de l’art, de l’artisanat, du théâtre et du vin.")
c3 = Checkpoint.create!(name: "Musée du vin et du négoce de Bordeaux", progress: 0, tour: wagon, address: "41 Rue Borie, 33000 Bordeaux", description: "Dans l’immeuble du courtier royal de Louis XV, découvrez trois siècles d’histoire et de renommée des grands vins de Bordeaux. Les caves voutées, baties en 1720, retracent le travail des tonneliers et l’élevage du vin en barriques dans la tradition des négociants éleveurs du XIXème siècle.")
c4 = Checkpoint.create!(name: "Eglise Saint-Louis des Chartrons", progress: 0, tour: wagon, address: "51 Rue Notre Dame, 33000 Bordeaux", description: "L'église Saint-Louis-des-Chartronsest dédiée à saint Louis et dépend de l'archidiocèse de Bordeaux. Cette église néo-gothique présente une façade très verticale en trois parties, ornée d'une rosace, avec deux tours à hautes flèches, de 58 mètres2, et un vaisseau massif. Son plan est en croix latine. Elle mesure 60,35 mètres de longueur pour 23 mètres de largeur et 22,26 mètres de hauteur de voûtes2. Le pignon est orné d'une statue de saint Louis de Louis Coëffard de Mazerolles (1818-1887). Ses tours en font l'église la plus haute de Bordeaux.")
c5 = Checkpoint.create!(name: "CAPC Musée d'art contemporain", progress: 0, tour: wagon, address: "7 Rue Ferrere, 33000 Bordeaux", description: "Le CAPC musée d'art contemporain de Bordeaux, anciennement Centre d'arts plastiques contemporains (CAPC) de Bordeaux, est le musée d'art contemporain de Bordeaux inauguré en 1983 dans l'ancien Entrepôt Lainé.")

