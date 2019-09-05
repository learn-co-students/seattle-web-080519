# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
IceCream.destroy_all

vanilla = IceCream.create(flavor: "Vanilla")
chocolate = IceCream.create(flavor: "Chocolate")
strawberry = IceCream.create(flavor: "Strawberry")

jonathan = User.create(name: "Jonathan", ice_cream_id: chocolate.id)
suzy = User.create(name: "Suzy", ice_cream: chocolate)