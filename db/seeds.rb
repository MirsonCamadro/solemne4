# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Task.destroy_all

require 'faker'

9.times do |i|
    Task.create(
        title: Faker::ChuckNorris.fact,
        photo: "https://picsum.photos/id/#{i+17}/400/400"
    )
end