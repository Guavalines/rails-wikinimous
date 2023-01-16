# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Articles.destroy_all
# Team.destroy_all

# 5.times do
#     Team.create(name:Faker::Sports::Basketball.team)
# end

Article.delete_all

NUM_ARTICLES = 50

NUM_ARTICLES.times do
    title = Faker::Lorem.sentence
    content = Faker::Lorem.paragraphs
    Article.create(title: title, content: content)
end
