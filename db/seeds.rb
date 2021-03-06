# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(name: Faker::Lorem.word, email: Faker::Lorem.word, password: "password", password_confirmation: "password")
station = Station.create(name: Faker::Lorem.word, created_by: User.first.id, zipcode: Faker::Number.number(5))

50.times do
  station.readings.create(temp: Faker::Number.decimal(2), humidity: Faker::Number.decimal(2))
end