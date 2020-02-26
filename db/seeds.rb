# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# the next 5 lines are required for cloudinary to work, please merge them in! thanks!! =)
require "open-uri"
require 'faker'

puts 'Cleaning database...'
# Event.destroy_all
# User.destroy_all

# create

user_attributes = {
  username: "saioa",
  email: "saio@gmail.com",
  password: "password",
  age: rand(17..47)
}
User.create!(user_attributes)

return if Rails.env.production?

puts 'Creating users...'

5.times do
  user_attributes =
    {
      username: Faker::Name.name,
      email: Faker::Internet.email,
      password: "password",
      age: rand(17..47)
    }
  User.create!(user_attributes)
end

puts 'Creating events...'

event_pics = [
  "http://wtop.com/wp-content/uploads/2017/05/ThinkstockPhotos-526833490.jpg",
  "https://assets3.thrillist.com/v1/image/2787251/size/gn-gift_guide_variable_c.jpg",
  "https://leieting.s3.amazonaws.com/images/listing_images/images/268898/original/skiww.jpg?1476386788",
  "https://boardgamereviewed.com/wp-content/uploads/2016/02/risk-us-edition.jpeg",
  "https://www.wikihow.com/images/c/c0/Play-Pig-(Card-Game)-Step-17-Version-2.jpg"
]



10.times do
  today = Date.today + rand(0..50)
  streets = [" Schweigaards gate, Sandnes"," South Circular Road, Dublin", " North Circular Road, Dublin", " Gran Via, Bilbao", " Lapurdi, Galdakao", " Sognsveien, Oslo", " Karl johans Gate, Gothenburg", " Skjelderups gate, Oslo", " Akersgate, Oslo"]
  event_name = Faker::Games::Pokemon.unique.move
  categories_array = ["sport", "nature", "board games", "social"]

  puts "Creating event #{event_name}"
  # address = JSON.load(URI.open("https://dog.ceo/api/breeds/image/random"))["message"]
  # breed = address.split("/")[-2]
  going = rand(0..15)
  needed = rand(0..going)
  event = Event.create!({
    name: event_name,
    age_range: rand(0..10),
    people_going: going,
    people_needed: needed,
    categories: categories_array.sample,
    creator: User.all.sample,
    address: rand(1..30).to_s + streets.sample,
    description: "aiwhdouiahoduaw",
    time: Faker::Time.forward(days: 0,  period: :morning, format: :long) #=> "October 21, 2018 20:47"
  })

  file = URI.open(event_pics.sample)
  event.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
end

puts 'Creating EventUsers...'

5.times do |i|
  puts "creating EventUser # #{i}..."
  events_users_attributes =
    {
      user: User.all.sample,
      event: Event.all.sample
    }
  EventUser.create!(events_users_attributes)
end
puts 'Finished!'

