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

25.times do
  Question.create!(
    title: Faker::StarWars.planet,
    body: Faker::StarWars.wookie_sentence
  )
end
questions = Question.all

50.times do
  Answer.create!(
    question: questions.sample,
    body: Faker::StarWars.quote
  )
end
answers = Answer.all


p "Seed Finished!"
p "#{Post.count} posts created"
p "#{Comment.count} comments created"
p "#{Question.count} questions created"
p "#{Answer.count} answers created"
