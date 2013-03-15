require 'faker'

10.times do
  a = Post.create(title: Faker::Lorem.word, author: Faker::Name.first_name, body: Faker::Lorem.paragraphs)
  3.times do
    b = Tag.create(name: Faker::Name.first_name)
    a.tags << b
  end
end