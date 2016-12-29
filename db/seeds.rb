# Create Posts
50.times do
  Post.create!(
    title: Faker::StarWars.planet,
    body: Faker::StarWars.wookie_sentence
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: Faker::StarWars.quote
  )
end

p "Seed Finished!"
p "#{Post.count} posts created"
p "#{Comment.count} comments created"
