# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chef_one = Chef.create(name: "Ghost")
chef_two = Chef.create(name: "Gamora")

customer_one = Customer.create(name: "Ninja")
customer_two = Customer.create(name: "Grey Joy")

Sushi.create(name: "Rainbow Roll", chef: chef_one, customer: customer_one)
Sushi.create(name: "Dragon Roll", chef: chef_one, customer: customer_two)
Sushi.create(name: "Drag Queen Roll", chef: chef_two, customer: customer_one)