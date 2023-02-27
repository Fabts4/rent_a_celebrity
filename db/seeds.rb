# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create!(email: "blabla@gmail.com", password: "123456")
Offer.create!(celebrity_name: "Sarko l'escroc", price: 100, category: "politicien", content: "Tour de magie, disparitiond de malette de billet", user_id: 2)
Offer.create!(celebrity_name: "Youssef Polnareff", price: 1000, category: "chanteur", content: "Michel Polnareff des 1000 et 1 nuits", user_id: 2)
Offer.create!(celebrity_name: "Jean Alidé", price: 10000, category: "chanteur", content: "Le Johnny Halliday français", user_id: 2)
