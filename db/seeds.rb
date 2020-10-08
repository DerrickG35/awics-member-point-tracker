# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if ENV['User']
    User.create(first_name: 'Derrick', last_name: 'Galindo', position_id: 'member', member_points: 0, username: 'derrickg', password: 'password', email: 'derrickg@tamu.edu')
    User.create(first_name: 'Hard', last_name: 'Patel', position_id: 'admin', member_points: 0, username: 'hnpatel97', password: 'password', email: 'hnpatel97@tamu.edu')
    User.create(first_name: 'Phillip', last_name: 'Wong', position_id: 'member', member_points: 0, username: 'phillipwong95', password: 'password', email: 'phillipwong95@tamu.edu')
    User.create(first_name: 'Hunter', last_name: 'Cleary', position_id: 'member', member_points: 0, username: 'hncleary', password: 'password', email: 'hncleary@tamu.edu')
end

if ENV['Event']
    Event.create(event_name:'Meeting1', date: '08-04-2020', time: '07:00:00', point_amount: 5)
    Event.create(event_name:'Meeting2', date: '09-04-2020', time: '07:00:00', point_amount: 3)
    Event.create(event_name:'Meeting3', date: '10-04-2020', time: '07:00:00', point_amount: 2)
end

if ENV['Attendance']
    Attendance.create(event_id: 'Meeting1', username: 'derrickg')
    Attendance.create(event_id: 'Meeting1', username: 'hncleary')
    Attendance.create(event_id: 'Meeting1', username: 'phillipwong95')
    Attendance.create(event_id: 'Meeting2', username: 'hnpatel97')
    Attendance.create(event_id: 'Meeting2', username: 'derrickg')
    Attendance.create(event_id: 'Meeting3', username: 'derrickg')
    Attendance.create(event_id: 'Meeting3', username: 'phillipwong95')
    Attendance.create(event_id: 'Meeting3', username: 'hncleary')
end

if ENV['Position']
    Position.create(position_id: 'member', multiplier: 1, position_title: 'member')
    Position.create(position_id: 'admin', multiplier: 2, position_title: 'admin')
end