# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User
User.create(first_name: "Javier", last_name: "Ibarra", email: "jaibarra1@miuandes.cl", city: "Santiago", country: "Chile", password: "0987654321", biography: "hello" )
User.create(first_name: "Josefina", last_name: "Ibarra", email: "jibarra@miuandes.cl", city: "Santiago", country: "Chile", password: "jose123", biography: "hello world" )
User.create(first_name: "Maria Jesus", last_name: "Ibarra", email: "mjibarra@miuandes.cl", city: "Santiago", country: "Chile", password: "jesu123", biography: "world" )
User.create(first_name: "Javier", last_name: "Ibarra", email: "jibarra@gmail.com", city: "Santiago", country: "Chile", password: "0987654321", biography: "hola" )
User.create(first_name: "Camila",last_name: "Sepulveda", email: "csepulveda@miuandes.cl", city: "Santiago", country: "Chile", password: "0987654321", biography: "h")
User.create(first_name: "Gonzalo", last_name: "Caballero", email: "gcaballero@gmail.com", city: "Santiago", country: "Chile", password: "gonzalo123", biography: "askba" )

Admin.create(user_id: 1)

SuperAdmin.create(user_id: 5)

Post.create(user_id: 5, title: "Title post 1", text: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida. Cum congue convallis curabitur viverra posuere conubia odio praesent quisque montes natoque platea venenatis scelerisque dictumst, cubilia felis fermentum per duis sapien porttitor senectus velit sem nunc tellus ac. Convallis fusce tortor quis suspendisse at eu porttitor, non aliquam venenatis elementum dapibus iaculis, eros id vivamus purus feugiat tempus.")
Post.create(user_id: 2, title: "Title post 1", text: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida. Cum congue convallis curabitur viverra posuere conubia odio praesent quisque montes natoque platea venenatis scelerisque dictumst, cubilia felis fermentum per duis sapien porttitor senectus velit sem nunc tellus ac. Convallis fusce tortor quis suspendisse at eu porttitor, non aliquam venenatis elementum dapibus iaculis, eros id vivamus purus feugiat tempus." )
Post.create(user_id: 2, title: "Title post 2", text: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida. Cum congue convallis curabitur viverra posuere conubia odio praesent quisque montes natoque platea venenatis scelerisque dictumst, cubilia felis fermentum per duis sapien porttitor senectus velit sem nunc tellus ac. Convallis fusce tortor quis suspendisse at eu porttitor, non aliquam venenatis elementum dapibus iaculis, eros id vivamus purus feugiat tempus." )
Post.create(user_id: 3, title: "Title post 1", text: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida. Cum congue convallis curabitur viverra posuere conubia odio praesent quisque montes natoque platea venenatis scelerisque dictumst, cubilia felis fermentum per duis sapien porttitor senectus velit sem nunc tellus ac. Convallis fusce tortor quis suspendisse at eu porttitor, non aliquam venenatis elementum dapibus iaculis, eros id vivamus purus feugiat tempus." )
Post.create(user_id: 4, title: "Title post 1", text: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida. Cum congue convallis curabitur viverra posuere conubia odio praesent quisque montes natoque platea venenatis scelerisque dictumst, cubilia felis fermentum per duis sapien porttitor senectus velit sem nunc tellus ac. Convallis fusce tortor quis suspendisse at eu porttitor, non aliquam venenatis elementum dapibus iaculis, eros id vivamus purus feugiat tempus." )

Blacklist.create(user_id: 3)
Blacklist.create(user_id: 4)
