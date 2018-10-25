# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
    cities=City.create!(name: Faker::Nation.capital_city, postal_code: Faker::Address.zip_code)
end

10.times do
    users=User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentences, email: Faker::Internet.email, age: Random.rand(12..99), city_id: Random.rand(1..10))
end

20.times do
    gossips=Gossip.create!(user_id: Random.rand(1..10), title: Faker::Book.title, content: Faker::ChuckNorris.fact)
end

10.times do
    tags=Tag.create!(title: Faker::Lorem.word)
end

30.times do
    Gossip.find(Random.rand(1..20)).tags << Tag.find(Random.rand(1..10))
end

1.times do
    privatemessages=PrivateMessage.create!(content: Faker::ChuckNorris.fact, recipient: User.find(Random.rand(1..10)), sender: User.find(Random.rand(1..10)))
end
