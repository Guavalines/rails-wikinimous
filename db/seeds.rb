Article.delete_all

NUM_ARTICLES = 50

NUM_ARTICLES.times do
  title = Faker::Lorem.sentence
  content = Faker::Lorem.paragraphs
  Article.create(title: title, content: content)
end
