# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User
User.create(first_name: "Javier", last_name: "Ibarra", email: "jaibarra1@miuandes.cl", address: "Santiago, Chile", password: "0987654321", biography: "Cum congue convallis curabitur viverra posuere conubia odio praesent quisque montes natoque platea venenatis scelerisque dictumst, cubilia felis fermentum per duis sapien porttitor senectus velit sem nunc tellus ac." )
User.create(first_name: "Josefina", last_name: "Ibarra", email: "jibarra@miuandes.cl", address: "Santiago, Chile", password: "jose123", biography: "Convallis fusce tortor quis suspendisse at eu porttitor, non aliquam venenatis elementum dapibus iaculis, eros id vivamus purus feugiat tempus." )
User.create(first_name: "Maria Jesus", last_name: "Ibarra", email: "mjibarra@miuandes.cl", address: "Santiago, Chile", password: "jesu123", biography: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida." )
User.create(first_name: "Juan", last_name: "Ibarra", email: "jibarra@gmail.com", address: "Talca, Chile", password: "0987654321", biography: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida." )
User.create(first_name: "Camila",last_name: "Sepulveda", email: "csepulveda@miuandes.cl", address: "Santiago, Chile", password: "0987654321", biography: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida.")
User.create(first_name: "Gonzalo", last_name: "Caballero", email: "gcaballero@gmail.com", address: "Linares, Chile", password: "gonzalo123", biography: "Convallis fusce tortor quis suspendisse at eu porttitor, non aliquam venenatis elementum dapibus iaculis, eros id vivamus purus feugiat tempus.")

Admin.create(user_id: 1)

SuperAdmin.create(user_id: 5)

Post.create(user_id: 5, title: "Title post 1", active: true, solver: false, text: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida. Cum congue convallis curabitur viverra posuere conubia odio praesent quisque montes natoque platea venenatis scelerisque dictumst, cubilia felis fermentum per duis sapien porttitor senectus velit sem nunc tellus ac. Convallis fusce tortor quis suspendisse at eu porttitor, non aliquam venenatis elementum dapibus iaculis, eros id vivamus purus feugiat tempus.", created_at: "2019-06-01 12:30:20")
Post.create(user_id: 2, title: "Title post 2", active: true, solver: false, text: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida. Cum congue convallis curabitur viverra posuere conubia odio praesent quisque montes natoque platea venenatis scelerisque dictumst, cubilia felis fermentum per duis sapien porttitor senectus velit sem nunc tellus ac. Convallis fusce tortor quis suspendisse at eu porttitor, non aliquam venenatis elementum dapibus iaculis, eros id vivamus purus feugiat tempus.", created_at: "2019-06-05 23:43:56")
Post.create(user_id: 2, title: "Title post 3", active: true, solver: false, text: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida. Cum congue convallis curabitur viverra posuere conubia odio praesent quisque montes natoque platea venenatis scelerisque dictumst, cubilia felis fermentum per duis sapien porttitor senectus velit sem nunc tellus ac. Convallis fusce tortor quis suspendisse at eu porttitor, non aliquam venenatis elementum dapibus iaculis, eros id vivamus purus feugiat tempus.", created_at: "2019-05-17 16:37:43")
Post.create(user_id: 6, title: "Title post 4", active: true, solver: false, text: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida. Cum congue convallis curabitur viverra posuere conubia odio praesent quisque montes natoque platea venenatis scelerisque dictumst, cubilia felis fermentum per duis sapien porttitor senectus velit sem nunc tellus ac. Convallis fusce tortor quis suspendisse at eu porttitor, non aliquam venenatis elementum dapibus iaculis, eros id vivamus purus feugiat tempus." )
Post.create(user_id: 6, title: "Title post 5", active: true, solver: false, text: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida. Cum congue convallis curabitur viverra posuere conubia odio praesent quisque montes natoque platea venenatis scelerisque dictumst, cubilia felis fermentum per duis sapien porttitor senectus velit sem nunc tellus ac. Convallis fusce tortor quis suspendisse at eu porttitor, non aliquam venenatis elementum dapibus iaculis, eros id vivamus purus feugiat tempus." )
Post.create(user_id: 3, title: "Title post 6", active: false, solver: false, text: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida. Cum congue convallis curabitur viverra posuere conubia odio praesent quisque montes natoque platea venenatis scelerisque dictumst, cubilia felis fermentum per duis sapien porttitor senectus velit sem nunc tellus ac. Convallis fusce tortor quis suspendisse at eu porttitor, non aliquam venenatis elementum dapibus iaculis, eros id vivamus purus feugiat tempus." )
Post.create(user_id: 4, title: "Title post 7", active: false, solver: false, text: "Lorem ipsum dolor sit amet consectetur adipiscing, elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida. Cum congue convallis curabitur viverra posuere conubia odio praesent quisque montes natoque platea venenatis scelerisque dictumst, cubilia felis fermentum per duis sapien porttitor senectus velit sem nunc tellus ac. Convallis fusce tortor quis suspendisse at eu porttitor, non aliquam venenatis elementum dapibus iaculis, eros id vivamus purus feugiat tempus." )

Comment.create(post_id: 1, user_id:3, text: "Lorem ipsum dolor sit amet consectetur adipiscing")
Comment.create(post_id: 1, user_id:5, text: "elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida")
Comment.create(post_id: 1, user_id:3, text: "Convallis fusce tortor quis suspendisse at eu porttitor")
Comment.create(post_id: 2, user_id:2, text: "Lorem ipsum dolor sit amet consectetur adipiscing")
Comment.create(post_id: 3, user_id:1, text: "elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida")
Comment.create(post_id: 3, user_id:4, text: "Convallis fusce tortor quis suspendisse at eu porttitor")
Comment.create(post_id: 4, user_id:5, text: "Convallis fusce tortor quis suspendisse at eu porttitor")
Comment.create(post_id: 4, user_id:4, text: "Lorem ipsum dolor sit amet consectetur adipiscing")
Comment.create(post_id: 5, user_id:1, text: "elit curae urna nisi lobortis potenti, tincidunt molestie sem commodo gravida")
Comment.create(post_id: 1, user_id:2, text: "Lorem ipsum dolor sit amet consectetur adipiscing")

Report.create(user_id: 1, post_id: 3, short_comment: "fusce tortor quis suspendisse at eu porttitor")
Report.create(user_id: 5, post_id: 3, short_comment: "fusce tortor quis suspendisse at eu porttitor")
Report.create(user_id: 2, post_id: 4, short_comment: "fusce tortor quis suspendisse at eu porttitor")
Report.create(user_id: 1, post_id: 6, short_comment: "fusce tortor quis suspendisse at eu porttitor")
Report.create(user_id: 5, post_id: 6, short_comment: "fusce tortor quis suspendisse at eu porttitor")
Report.create(user_id: 2, post_id: 6, short_comment: "fusce tortor quis suspendisse at eu porttitor")
Report.create(user_id: 1, post_id: 7, short_comment: "fusce tortor quis suspendisse at eu porttitor")
Report.create(user_id: 5, post_id: 7, short_comment: "fusce tortor quis suspendisse at eu porttitor")
Report.create(user_id: 6, post_id: 7, short_comment: "fusce tortor quis suspendisse at eu porttitor")

Blacklist.create(user_id: 3)
Blacklist.create(user_id: 4)

Dumpster.create(post_id: 6)
Dumpster.create(post_id: 7)