# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(name: "suzuki"   , email: "test1@example.com" , password: "kirapass" , password_confirmation: "kirapass")
user2 = User.create(name: "takahashi", email: "test2@example.com" , password: "kirapass" , password_confirmation: "kirapass")