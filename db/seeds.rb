# db/seeds.rb

require 'faker'

# Create Posts
50.times do
  Post.create(
   title: "A Test Post",
   body: "blah blah blah"
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create(
    post: posts.sample,
    body: Faker::Lorem.paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
