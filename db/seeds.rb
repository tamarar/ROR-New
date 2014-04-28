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
  post: post,
  body: “Has anyone really been far even as decided to use even go want to do look more like?” 
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
