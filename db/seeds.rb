5.times do
  Article.create({
    title: Faker::Book.title,
    body: Faker::Lorem.sentence
    })
end

3.times do
  Counsellor.create({
    name: Faker::Name.name,
    profile_picture: "https://images.unsplash.com/photo-1478480154178-88540b2be3b0?dpr=1&auto=format&fit=crop&w=376&h=213&q=60&cs=tinysrgb&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D",
    city: Faker::Address.city,
    address: Faker::Address.street_name,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    paradigm: "CBT",
    specialization: "short term CBT theraphy",
    cost: "50"
    })
end

3.times do
  Counsellor.create({
    name: Faker::Name.name,
    profile_picture: "https://images.unsplash.com/photo-1478480154178-88540b2be3b0?dpr=1&auto=format&fit=crop&w=376&h=213&q=60&cs=tinysrgb&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D",
    city: Faker::Address.city,
    address: Faker::Address.street_name,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    paradigm: "psychodynamic",
    specialization: "long term, based on relationships",
    cost: "100"
    })
end

3.times do
  Counsellor.create({
    name: Faker::Name.name,
    profile_picture: "https://images.unsplash.com/photo-1478480154178-88540b2be3b0?dpr=1&auto=format&fit=crop&w=376&h=213&q=60&cs=tinysrgb&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D",
    city: Faker::Address.city,
    address: Faker::Address.street_name,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    paradigm: "psychologist",
    specialization: "consulations, tests, diagnosis",
    cost: "20"
    })
end

5.times do
  Post.create({
    content: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1478480154178-88540b2be3b0?dpr=1&auto=format&fit=crop&w=376&h=213&q=60&cs=tinysrgb&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D",
    owner_picture: "http://www.deluxxe.co.uk/assets/Ruth_new_colour_closeup.jpg",
    owner_name: Faker::Name.name,
    count_likes: Faker::Number.number(1)
    })
end
