require 'faker'

rand(5..10).times do
  p = Story.create(title: Faker::Lorem.words(rand(1..3)).join(" "), body: Faker::Lorem.paragraphs(rand(1..4)).join("\n"))
  rand(3..10).times do
    p.comments.create(body: Faker::Lorem.paragraphs(rand(1..2)).join("\n"))
  end
end

puts "Seed finished"
puts "#{Story.count} stories created"
puts "#{Comment.count} comments created"