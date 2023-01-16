# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


Faker::Articles.title #=> "5479 William Way, East Sonnyhaven, LA 63637"

Faker::Articles.content #=> "Quo qui aperiam. Amet corrupti distinctio. Sit quia *dolor.*"



Articles.destroy_all
# Team.destroy_all

# 5.times do
#     Team.create(name:Faker::Sports::Basketball.team)
# end

# teams = Team.all

# 10.times do
#     Article.create(title: Faker::Articles::Title.title,
#                   title: rand(1..99),
#                   content: articles[rand(0..4)])
# end
