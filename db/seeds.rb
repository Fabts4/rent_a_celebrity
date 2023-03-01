require "open-uri"
Offer.destroy_all
User.destroy_all
Booking.destroy_all

sarko_photo = URI.open("https://www.masculin.com/wp-content/uploads/sites/2/article/9289/sosie-de-merde-sarko-2.jpg")
polna_photo = URI.open("http://loznareff.fr/images/loznareff-sosie-michel-polnareff-vac.jpg")
alide_photo = URI.open("https://www.francebleu.fr/s3/cruiser-production/2018/12/a8908f45-6e96-40ef-ba27-fb7148612c36/1200x680_870x489_fullsizerender_29.jpg")
enricco_photo = URI.open("https://mycrazystuff.com/7583-large_default/masque-tete-de-cheval.jpg")
jb_photo = URI.open("https://i0.wp.com/bamfstyle.com/wp-content/uploads/2018/10/frwlgrant2-cl1-suit.jpg?ssl=1")
brad_photo = URI.open("https://i2-prod.mirror.co.uk/incoming/article18854300.ece/ALTERNATES/s615b/0_PAY-Brad_Pitt_Lookalike_40_TRIANGLENEWS.jpg")
watson_photo = URI.open("https://i.dailymail.co.uk/1s/2020/12/28/09/37325542-9092287-image-a-1_1609147459621.jpg")
snoop_photo = URI.open("https://i.pinimg.com/originals/b7/aa/19/b7aa19d8bdd692f69327fae36905f5fc.jpg")
zlatan_photo = URI.open("https://www.calcioweb.eu/wp-content/uploads/2014/09/sosia-ibra.jpg")

user = User.create!(email: "sosie@gmail.com", password: "123456", address: "Paris", first_name: "Youssef", last_name: "Aboulethar")
user_sarko = User.create!(email: "sarko@gmail.com", password: "123456", address: "Paris", first_name: "Nicolas", last_name: "Sarkozy")
user_polna = User.create!(email: "polna@gmail.com", password: "123456", address: "Grenoble", first_name: "Michel", last_name: "Polnareff")
user_alide = User.create!(email: "alide@gmail.com", password: "123456", address: "Lille", first_name: "Johnny", last_name: "Halliday")
user_enricco = User.create!(email: "enricco@gmail.com", password: "123456", address: "Auxerre", first_name: "Enricco", last_name: "Siffredo")
user_jb = User.create!(email: "jb@gmail.com", password: "123456", address: "Brest", first_name: "James", last_name: "Bond")
user_brad = User.create!(email: "brad@gmail.com", password: "123456", address: "Lyon", first_name: "Brad", last_name: "Pitt")
user_watson = User.create!(email: "watson@gmail.com", password: "123456", address: "Bordeaux", first_name: "Brad", last_name: "Pitt")
user_snoop = User.create!(email: "snoop@gmail.com", password: "123456", address: "Pau", first_name: "Snoop", last_name: "Dog")
user_zlatan = User.create!(email: "zlatan@gmail.com", password: "123456", address: "Dijon", first_name: "Zlatan", last_name: "Ibra")

sarko = Offer.new(celebrity_name: "Sarko l'escroc", price: 100, category: "Politician", short_desc: "Tour de magie, disparition de malette de billet",user_id: user_sarko.id, content: "Je vous propose un top 10 des meilleurs séquences télé. PS : La scène du Karcher est uniquement disponible pour une commande dans le 93")
sarko.photo.attach(io: sarko_photo, filename: "sarko.jpg", content_type: "image/jpg")
sarko.save!

polna = Offer.new(celebrity_name: "Youssef Polnareff", price: 100, category: "Singer", short_desc: "Michel Polnareff des 1000 et 1 nuits", user_id: user_polna.id, content: "Un spectacle musical fusion, entre Paris et Badgad, entre le reblochon et le couscous")
polna.photo.attach(io: polna_photo, filename: "sarko.jpg", content_type: "image/jpg")
polna.save!

alide = Offer.new(celebrity_name: "Jean Alidé", price: 100, category: "Singer", short_desc: "Le Johnny Halliday français", user_id: user_alide.id, content: "J'allume le feu dans vos soirées, j'amène le Tenessee dans ton salon, je te promets un moment de folie. Je serai là")
alide.photo.attach(io: alide_photo, filename: "sarko.jpg", content_type: "image/jpg")
alide.save!

enricco = Offer.new(celebrity_name: "Enricco Sifreddo", price: 100, category: "Actor", short_desc: "Anciennement pharmacien, suppositoire fourni par l'artiste", user_id: user_enricco.id, content: " Un show parfait pour les grands et les plus grands, amateurs de documentaires animaliers, imite parfaitement les cris des animaux de la ferme")
enricco.photo.attach(io: enricco_photo, filename: "sarko.jpg", content_type: "image/jpg")
enricco.save!

jb = Offer.new(celebrity_name: "Yakub Bund", price: 100, category: "Actor", short_desc: "Paiment en rouble uniquement. Gadgets en option", user_id: user_jb.id, content: "Reservez moi uniquement si vous avez les moyens de me faire parler")
jb.photo.attach(io: jb_photo, filename: "sarko.jpg", content_type: "image/jpg")
jb.save!

brad = Offer.new(celebrity_name: "Brad Pitt", price: 100, category: "Actor", short_desc: "Angelina Jolie vendue séparément", user_id: user_brad.id, content: "Je rejoue les rôles de Brad Pitt sur demande toute la soirée, y compris son divorce")
brad.photo.attach(io: brad_photo, filename: "sarko.jpg", content_type: "image/jpg")
brad.save!

watson = Offer.new(celebrity_name: "Emma Watson", price: 100, category: "Actor", short_desc: "Windardium Leviosa, avec la prononciation parfaite! ", user_id: user_watson.id, content: "J'anime le cours de Poudlard de votre choix, potions, sortilèges, botanique, etc... ")
watson.photo.attach(io: watson_photo, filename: "sarko.jpg", content_type: "image/jpg")
watson.save!

snoop = Offer.new(celebrity_name: "Snoop Doggy Dog", price: 100, category: "Singer", short_desc: "Qu'est ce qu'on attend ?", user_id: user_snoop.id, content: "Double exclusivité sur cette prestation ! Le premier spectacle d'animal sosie et le premier chien qui fait un collage live")
snoop.photo.attach(io: snoop_photo, filename: "sarko.jpg", content_type: "image/jpg")
snoop.save!

zlatan = Offer.new(celebrity_name: "Zlatan", price: 100, category: "Sportsman", short_desc: "Löksås ipsum regn har inom så bra för dimmhöljd häst söka rännil", user_id: user_zlatan.id, content: "Kan enligt annat där på av tre ingalunda omfångsrik regn. Vemod från vi har hela erfarenheter år lax")
zlatan.photo.attach(io: zlatan_photo, filename: "sarko.jpg", content_type: "image/jpg")
zlatan.save!
