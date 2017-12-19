# 5.times do
#   Article.create({
#     title: Faker::Book.title,
#     body: Faker::Lorem.sentence
#     })
# end

5.times do
  Counsellor.create({
    name: Faker::Name.name
    })
end
