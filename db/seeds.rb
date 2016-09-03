# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'random_data'

# Create Posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph,
    )
end
post = Post.all

100.times do
  Comment.create!(
    post: post.sample,
    body: RandomData.random_paragraph
  )
end

# Create Advertisements
10.times do
  Advertisement.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph,
    price:  RandomData.random_number
    )
end
advertisement = Advertisement.all

# puts "#{Post.count}"
# Post.find_or_create_by(title: "A little something new", body: "A shapely body")
# puts "#{Post.count}"

puts "Seed finished"
puts "#{Post.count} post created"
puts "#{Comment.count} comments created"
puts "#{Advertisement.count} advertisements created"
