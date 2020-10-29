# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if ENV['User']
  User.create(
    firstname: 'Derrick',
    lastname: 'Galindo',
    member_points: 0,
    admin: true,
    email: 'derrickg@tamu.edu'
  )
  User.create(
    firstname: 'Hard',
    lastname: 'Patel',
    member_points: 0,
    email: 'hnpatel97@tamu.edu'
  )
  User.create(
    firstname: 'Phillip',
    lastname: 'Wong',
    member_points: 0,
    email: 'phillipwong95@tamu.edu'
  )
  User.create(firstname: 'Hunter',
              lastname: 'Cleary',
              member_points: 0,
              email: 'hncleary@tamu.edu')
end

if ENV['Event']
  Event.create(event_name: 'Meeting1', event_date: '08-04-2020', event_points: 5, user_id: 1)
  Event.create(event_name: 'Meeting1', event_date: '08-04-2020', event_points: 5, user_id: 4)
  Event.create(event_name: 'Meeting1', event_date: '08-04-2020', event_points: 5, user_id: 3)
  Event.create(event_name: 'Meeting2', event_date: '09-04-2020', event_points: 3, user_id: 2)
  Event.create(event_name: 'Meeting2', event_date: '09-04-2020', event_points: 3, user_id: 1)
  Event.create(event_name: 'Meeting3', event_date: '10-04-2020', event_points: 2, user_id: 1)
  Event.create(event_name: 'Meeting3', event_date: '10-04-2020', event_points: 2, user_id: 3)
  Event.create(event_name: 'Meeting3', event_date: '10-04-2020', event_points: 2, user_id: 4)
end

if ENV['Attendance']
  Attendance.create(event_id: 1, user_id: 1)
  Attendance.create(event_id: 1, user_id: 4)
  Attendance.create(event_id: 1, user_id: 3)
  Attendance.create(event_id: 2, user_id: 2)
  Attendance.create(event_id: 2, user_id: 1)
  Attendance.create(event_id: 3, user_id: 1)
  Attendance.create(event_id: 3, user_id: 3)
  Attendance.create(event_id: 3, user_id: 4)
end

if ENV['Position']
  Position.create(position_id: 'member', multiplier: 1, position_title: 'member')
  Position.create(position_id: 'admin', multiplier: 2, position_title: 'admin')
end
