# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require 'faker'
puts 'Cleaning database...'
# Event.destroy_all
# User.destroy_all

puts 'Creating users...'

30.times do
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
p User.all

30.times do
  today = Date.today + rand(0..50)
  streets = [" Schweigaards gate, Sandnes","South Circular Road, Dublin", "North Circular Road, Dublin", " Gran Via, Bilbao", " Lapurdi, Galdakao", " Sognsveien, Oslo", " Karl johans Gate, Gothenburg", " Skjelderups gate, Oslo", " Akersgate, Oslo"]
  event_name = Faker::Games::Pokemon.unique.move
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
    creator: User.all.sample,
    address: rand(1..30).to_s + streets.sample,
    description: "aiwhdouiahoduaw",
    time: Faker::Time.forward(days: 10,  period: :evening, format: :long) #=> "October 21, 2018 20:47"
  })
  # file = URI.open(URI.escape(address))
  # if file.class == Tempfile
  #   dog.photos.attach(io: file, filename: "#{dogname}.jpg", content_type: 'image/jpg')
  #   dog.save!
  # end
end

puts 'Creating EventUsers...'

30.times do |i|
  puts "creating EventUser # #{i}..."
  events_users_attributes =
    {
      user: User.all.sample,
      event: Event.all.sample
    }
  EventUser.create!(events_users_attributes)
end
puts 'Finished!'
