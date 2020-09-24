# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'Derrick', last_name: 'Galindo', position_id: 'member', member_points: 0, username: 'derrickg', password: 'password')
User.create(first_name: 'Hard', last_name: 'Patel', position_id: 'admin', member_points: 0, username: 'hnpatel97', password: 'password')
User.create(first_name: 'Phillip', last_name: 'Wong', position_id: 'member', member_points: 0, username: 'phillipwong95', password: 'password')
User.create(first_name: 'Hunter', last_name: 'Cleary', position_id: 'member', member_points: 0, username: 'hncleary', password: 'password')
