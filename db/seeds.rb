require "open-uri"

Offer.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

sarko_photo = URI.open("https://www.masculin.com/wp-content/uploads/sites/2/article/9289/sosie-de-merde-sarko-2.jpg")
polna_photo = URI.open("http://loznareff.fr/images/loznareff-sosie-michel-polnareff-vac.jpg")
alide_photo = URI.open("https://www.francebleu.fr/s3/cruiser-production/2018/12/a8908f45-6e96-40ef-ba27-fb7148612c36/1200x680_870x489_fullsizerender_29.jpg")

user = User.create!(email: "sosie@gmail.com", password: "123456")

sarko = Offer.new(celebrity_name: "Sarko l'escroc", price: 100, category: "Politician", content: "Tour de magie, disparition de malette de billet", user_id: user.id)
sarko.photo.attach(io: sarko_photo, filename: "sarko.jpg", content_type: "image/jpg")
sarko.save!

polna = Offer.new(celebrity_name: "Youssef Polnareff", price: 1000, category: "Singer", content: "Michel Polnareff des 1000 et 1 nuits", user_id: user.id)
polna.photo.attach(io: polna_photo, filename: "sarko.jpg", content_type: "image/jpg")
polna.save!

alide = Offer.new(celebrity_name: "Jean Alidé", price: 10000, category: "Singer", content: "Le Johnny Halliday français", user_id: user.id)
alide.photo.attach(io: alide_photo, filename: "sarko.jpg", content_type: "image/jpg")
alide.save
