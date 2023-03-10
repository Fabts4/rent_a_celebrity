require "open-uri"
Offer.destroy_all
User.destroy_all

sarko_photo = URI.open("https://www.masculin.com/wp-content/uploads/sites/2/article/9289/sosie-de-merde-sarko-2.jpg")
polna_photo = URI.open("http://loznareff.fr/images/loznareff-sosie-michel-polnareff-vac.jpg")
alide_photo = URI.open("https://www.francebleu.fr/s3/cruiser-production/2018/12/a8908f45-6e96-40ef-ba27-fb7148612c36/1200x680_870x489_fullsizerender_29.jpg")
enricco_photo = URI.open("https://mycrazystuff.com/7583-large_default/masque-tete-de-cheval.jpg")
jb_photo = URI.open("https://i0.wp.com/bamfstyle.com/wp-content/uploads/2018/10/frwlgrant2-cl1-suit.jpg?ssl=1")
brad_photo = URI.open("https://i2-prod.mirror.co.uk/incoming/article18854300.ece/ALTERNATES/s615b/0_PAY-Brad_Pitt_Lookalike_40_TRIANGLENEWS.jpg")
watson_photo = URI.open("https://i.dailymail.co.uk/1s/2020/12/28/09/37325542-9092287-image-a-1_1609147459621.jpg")
snoop_photo = URI.open("https://i.pinimg.com/originals/b7/aa/19/b7aa19d8bdd692f69327fae36905f5fc.jpg")
zlatan_photo = URI.open("https://www.calcioweb.eu/wp-content/uploads/2014/09/sosia-ibra.jpg")
guadeloupe_photo = URI.open("https://pbs.twimg.com/media/B542mQ6CEAAxS6H.png")
lasalle_photo = URI.open("https://france3-regions.francetvinfo.fr/image/SU3A4adFWOBznqLOTAsrRf5b6D0/600x400/regions/2020/06/08/5ede79262d113_jean_lassalle_depute_modem.jpg")
barthez_photo = URI.open("https://cdn.fansshare.com/pictures/fabienbarthez/le-sosie-officiel-de-fabien-barthez-dit-wow-wow-wow-wide-1475162713.jpg")


user = User.create!(email: "sosie@gmail.com", password: "123456", address: "Aubergenville", first_name: "Youssef", last_name: "Aboulethar")
user_sarko = User.create!(email: "sarko@gmail.com", password: "123456", address: "Paris", first_name: "Nicolas", last_name: "Sarkozy")
user_polna = User.create!(email: "polna@gmail.com", password: "123456", address: "Grenoble", first_name: "Michel", last_name: "Polnareff")
user_alide = User.create!(email: "alide@gmail.com", password: "123456", address: "Lille", first_name: "Johnny", last_name: "Halliday")
user_enricco = User.create!(email: "enricco@gmail.com", password: "123456", address: "Auxerre", first_name: "Enricco", last_name: "Siffredo")
user_jb = User.create!(email: "jb@gmail.com", password: "123456", address: "Brest", first_name: "James", last_name: "Bond")
user_brad = User.create!(email: "brad@gmail.com", password: "123456", address: "Lyon", first_name: "Brad", last_name: "Pitt")
user_watson = User.create!(email: "watson@gmail.com", password: "123456", address: "Bordeaux", first_name: "Brad", last_name: "Pitt")
user_snoop = User.create!(email: "snoop@gmail.com", password: "123456", address: "Pau", first_name: "Snoop", last_name: "Dog")
user_zlatan = User.create!(email: "zlatan@gmail.com", password: "123456", address: "Dijon", first_name: "Zlatan", last_name: "Ibra")
user_guadeloupe = User.create!(email: "guadeloupe@gmail.com", password: "123456", address: "Hollande", first_name: "Fran??ois", last_name: "Guadeloupe")
user_lasalle = User.create!(email: "lasalle@gmail.com", password: "123456", address: "Montreuil", first_name: "Jean", last_name: "Lasalle")
user_barthez = User.create!(email: "barthez@gmail.com", password: "123456", address: "Villepinte", first_name: "Fabien", last_name: "Brthez")


sarko = Offer.new(celebrity_name: "Sarko l'escroc", price: 120, category: "Politique", short_desc: "Sp??cialit?? : Tour de magie, disparition de malette de billet",user_id: user_sarko.id, content: "Je vous propose un top 10 des meilleurs s??quences t??l??. PS??: La sc??ne du Karcher est uniquement disponible pour une commande dans le 93")
sarko.photo.attach(io: sarko_photo, filename: "sarko.jpg", content_type: "image/jpg")
sarko.save!

polna = Offer.new(celebrity_name: "Youssef Polnareff", price: 230, category: "Musique", short_desc: "Michel Polnareff des 1000 et 1 nuits", user_id: user_polna.id, content: "Un spectacle musical fusion, entre Paris et Badgad, entre le reblochon et le couscous")
polna.photo.attach(io: polna_photo, filename: "sarko.jpg", content_type: "image/jpg")
polna.save!

alide = Offer.new(celebrity_name: "Jean Alid??", price: 340, category: "Musique", short_desc: "Le Johnny Halliday fran??ais", user_id: user_alide.id, content: "J'allume le feu dans vos soir??es, j'am??ne le Tenessee dans ton salon, je te promets un moment de folie. Je serai l??")
alide.photo.attach(io: alide_photo, filename: "sarko.jpg", content_type: "image/jpg")
alide.save!

enricco = Offer.new(celebrity_name: "Enricco Sifreddo", price: 80, category: "Cinema", short_desc: "Anciennement pharmacien, suppositoire fourni par l'artiste", user_id: user_enricco.id, content: " Un show parfait pour les grands et les plus grands, amateurs de documentaires animaliers, imite parfaitement les cris des animaux de la ferme")
enricco.photo.attach(io: enricco_photo, filename: "sarko.jpg", content_type: "image/jpg")
enricco.save!

jb = Offer.new(celebrity_name: "Yakub Bundinski", price: 140, category: "Cinema", short_desc: "Paiment en rouble uniquement. Gadgets en option", user_id: user_jb.id, content: "Reservez moi uniquement si vous avez les moyens de me faire parler")
jb.photo.attach(io: jb_photo, filename: "sarko.jpg", content_type: "image/jpg")
jb.save!

brad = Offer.new(celebrity_name: "Brad Pitt", price: 90, category: "Cinema", short_desc: "Angelina Jolie vendue s??par??ment", user_id: user_brad.id, content: "Je rejoue les r??les de Brad Pitt sur demande toute la soir??e, y compris son divorce")
brad.photo.attach(io: brad_photo, filename: "sarko.jpg", content_type: "image/jpg")
brad.save!

watson = Offer.new(celebrity_name: "Emma Watson", price: 180, category: "Cinema", short_desc: "Windardium Leviosa, avec la prononciation parfaite! ", user_id: user_watson.id, content: "J'anime le cours de Poudlard de votre choix, potions, sortil??ges, botanique, etc... ")
watson.photo.attach(io: watson_photo, filename: "sarko.jpg", content_type: "image/jpg")
watson.save!

snoop = Offer.new(celebrity_name: "Snoop Doggy Dog", price: 420, category: "Musique", short_desc: "Qu'est ce qu'on attend???", user_id: user_snoop.id, content: "Double exclusivit?? sur cette prestation??! Le premier spectacle d'animal sosie et le premier chien qui fait un collage live")
snoop.photo.attach(io: snoop_photo, filename: "sarko.jpg", content_type: "image/jpg")
snoop.save!

zlatan = Offer.new(celebrity_name: "Zlatan", price: 170, category: "Sport", short_desc: "L??ks??s ipsum regn har inom s?? bra f??r dimmh??ljd h??st s??ka r??nnil", user_id: user_zlatan.id, content: "Kan enligt annat d??r p?? av tre ingalunda omf??ngsrik regn. Vemod fr??n vi har hela erfarenheter ??r lax")
zlatan.photo.attach(io: zlatan_photo, filename: "sarko.jpg", content_type: "image/jpg")
zlatan.save!

guadeloupe = Offer.new(celebrity_name: "Fran??ois Guadeloupe", price: 150, category: "Politique", short_desc: "Le rhum antillais normal", user_id: user_guadeloupe.id, content: "Moi, antillais, je vous apporterai la bonne humeur. Moi, antillais, je vous apporterai le soleil. Moi, antillais, je vous apporterai l'ap??ro")
guadeloupe.photo.attach(io: guadeloupe_photo, filename: "sarko.jpg", content_type: "image/jpg")
guadeloupe.save!

barthez = Offer.new(celebrity_name: "Fabien Barthez", price: 110, category: "Sport", short_desc: "Suite ?? de nombreux impay??s, la maison n'accepte plus les bisous sur le front", user_id: user_barthez.id, content: "J'adore dire des conneries, malheureusement mes parents voulaient que je fasse un vrai m??tier, donc j'ai fait du foot")
barthez.photo.attach(io: barthez_photo, filename: "sarko.jpg", content_type: "image/jpg")
barthez.save!

lasalle = Offer.new(celebrity_name: "Jean Lasalle", price: 90, category: "Politique", short_desc: "Le vrai Jean Lasalle, mais plusieurs tailles de nez disponibles sur demande", user_id: user_lasalle.id, content: "Je lance le financement de ma campagne pr??sidentielle 2027, je d??bute donc cette nouvelle activit??")
lasalle.photo.attach(io: lasalle_photo, filename: "sarko.jpg", content_type: "image/jpg")
lasalle.save!


review_1 = Review.create!(comment: "", rating: 3, offer_id: polna.id)
review_2 = Review.create!(comment: "", rating: 4, offer_id: alide.id)
review_3 = Review.create!(comment: "", rating: 1, offer_id: enricco.id)
review_4 = Review.create!(comment: "", rating: 4, offer_id: jb.id)
review_5 = Review.create!(comment: "", rating: 4, offer_id: brad.id)
review_6 = Review.create!(comment: "", rating: 5, offer_id: watson.id)
review_7 = Review.create!(comment: "", rating: 3, offer_id: snoop.id)
review_8 = Review.create!(comment: "", rating: 5, offer_id: zlatan.id)
review_10 = Review.create!(comment: "Trop bien mais depuis son passage, je ne retrouve plus ma Playstation", rating: 3, offer_id: sarko.id)
review_11 = Review.create!(comment: "Il a sorti le grand jeu devant mes potes, je recommande vivement pour un diner le mercredi", rating: 4, offer_id: sarko.id)
review_12 = Review.create!(comment: "Un super moment de nostalgie, chapeau l'artiste!", rating: 5, offer_id: sarko.id)
Review.create!(comment: "", rating: 4, offer_id: guadeloupe.id)
Review.create!(comment: "", rating: 3, offer_id: barthez.id)
Review.create!(comment: "", rating: 4, offer_id: lasalle.id)



book_1 = Booking.create!(event_date: Date.today - 30, comment: "Bonjour M.l'Escroc, seriez-vous disponible pour une performance ?? Mont??llimard, pour un after-work?", user_id: user_jb.id, offer_id: sarko.id, status: 'Rejected')
book_2 = Booking.create!(event_date: Date.today + 6, comment: "Salut Nico, j'aurai besoin de toi pour animer une conf' du Medef sur Paris, ??a te tentes?", user_id: user_zlatan.id, offer_id: sarko.id, status: 'Accepted')
book_3 = Booking.create!(event_date: Date.today - 128, comment: "Ouaf Ouaf Ouaf Ouaf !!!", user_id: user.id, offer_id: snoop.id, status: 'Accepted')
