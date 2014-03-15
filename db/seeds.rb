require 'faker'

5.times do
  password = "helloworld"
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: password,
    password_confirmation: password)
  user.skip_confirmation!
  user.save

  rand(5..10).times do
    p = Story.create(user: user,
      title: Faker::Lorem.words(rand(1..3)).join(" "), 
      body: Faker::Lorem.paragraphs(rand(1..4)).join("\n"))
  end
end

user = User.first
user.skip_reconfirmation!
user.update_attributes(email: 'lou@gmail.com', password: 'helloworld', password_confirmation: 'helloworld')


puts "Seed finished"
puts "#{Story.count} stories created"
puts "#{Comment.count} comments created"