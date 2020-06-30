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

c1 = Checkpoint.create!(name: "Le Wagon", tour: wagon, address: "107 Cours Balguerie Stuttenberg, 33300 Bordeaux", description: "The best bootcamp ever!")
c2 = Checkpoint.create!(name: "Galerie ouverte", tour: wagon, address:"7, Rue André Darbon, Bordeaux", description: "Cette galerie, dans le prolongement du faubourg des arts, est un espace couvert, un repère, tant depuis les quais des Chartrons que depuis le cœur de la ZAC. Il s’agit d’une place urbaine, un espace de rencontres, d’événements liés aux thèmes de l’art, de l’artisanat, du théâtre et du vin.")
c3 = Checkpoint.create!(name: "Musée du vin et du négoce de Bordeaux", tour: wagon, address: "41 Rue Borie, 33000 Bordeaux", description: "Dans l’immeuble du courtier royal de Louis XV, découvrez trois siècles d’histoire et de renommée des grands vins de Bordeaux. Les caves voutées, baties en 1720, retracent le travail des tonneliers et l’élevage du vin en barriques dans la tradition des négociants éleveurs du XIXème siècle.")
c4 = Checkpoint.create!(name: "Eglise Saint-Louis des Chartrons", tour: wagon, address: "51 Rue Notre Dame, 33000 Bordeaux", description: "L'église Saint-Louis-des-Chartronsest dédiée à saint Louis et dépend de l'archidiocèse de Bordeaux. Cette église néo-gothique présente une façade très verticale en trois parties, ornée d'une rosace, avec deux tours à hautes flèches, de 58 mètres2, et un vaisseau massif. Son plan est en croix latine. Elle mesure 60,35 mètres de longueur pour 23 mètres de largeur et 22,26 mètres de hauteur de voûtes2. Le pignon est orné d'une statue de saint Louis de Louis Coëffard de Mazerolles (1818-1887). Ses tours en font l'église la plus haute de Bordeaux.")
c5 = Checkpoint.create!(name: "CAPC Musée d'art contemporain", tour: wagon, address: "7 Rue Ferrere, 33000 Bordeaux", description: "Le CAPC musée d'art contemporain de Bordeaux, anciennement Centre d'arts plastiques contemporains (CAPC) de Bordeaux, est le musée d'art contemporain de Bordeaux inauguré en 1983 dans l'ancien Entrepôt Lainé.")
