# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
restaurant = Restaurant.create(name: "Jikoni", address: "jikoni254@gmail.com")
pizza = Pizza.create(name: "Napoletana", ingredients: "Dough, Mozzarella")
restPizza = RestaurantPizza.create(pizza_id: 1, restaurant_id: 1, price: 1200)