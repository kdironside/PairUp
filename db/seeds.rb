# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'John Doe', :email => 'user1@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
user.add_role :moderator

user2 = User.create! :name => 'Harry Potter', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.name
user2.add_role :admin

user3 = User.create! :name => 'Mary Smith', :email => 'user3@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user3.name
user3.add_role :admin

user4 = User.create! :name => 'Mark Down', :email => 'user4@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user4.name

user5 = User.create! :name => 'Ruby Tuesday', :email => 'user5@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user5.name

user6 = User.create! :name => 'Alice Wonderland', :email => 'user6@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user6.name


