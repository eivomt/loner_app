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
puts 'Creating users...'

user = User.create!({
  username: "saioa",
  email: "saio@gmail.com",
  password: "password",
  age: 26
})

puts "picture url 1"
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F2%2F2b%2FJessica_Ennis_%2528May_2010%2529_cropped.jpg&f=1&nofb=1")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/jpg')

return if Rails.env.production?

puts "picture url 2"
user = User.create!({
    username: "Torfinn",
    email: "torfinn@gmail.com",
    password: "password",
    age: 43
  })

file = URI.open("https://images.askmen.com/1080x540/2016/01/25-021526-facebook_profile_picture_affects_chances_of_getting_hired.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 3"
user = User.create!({
    username: "Eivind",
    email: "eivind@gmail.com",
    password: "password",
    age: 30
  })
file = URI.open("https://i.kinja-img.com/gawker-media/image/upload/s--C-HE98Fg--/c_scale,fl_progressive,q_80,w_800/eibgv7kctah62iddzywm.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')
puts "picture url 4"
user = User.create!({
    username: "Alex",
    email: "alex@gmail.com",
    password: "password",
    age: 25
  })
file = URI.open("https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&h=350")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')
puts "picture url 5"
user = User.create!({
    username: "Simen",
    email: "simen@gmail.com",
    password: "password",
    age: 27
  })
file = URI.open("https://www.specialimages.co.uk/blog/wp-content/uploads/2012/07/corporate-people-photography-1.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 6"
user = User.create!({
    username: "Julian",
    email: "julian@gmail.com",
    password: "password",
    age: 27
  })
file = URI.open("http://2hngz4f6s7y2dzzb25efew8p.wpengine.netdna-cdn.com/wp-content/uploads/2015/10/Michael-Fotis_Smart-Money-People.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

user = User.create!({
    username: "Dennis",
    email: "dennis@gmail.com",
    password: "password",
    age: 40
  })
file = URI.open("https://www.thefamouspeople.com/profiles/images/nicolas-cage-2.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

user = User.create!({
    username: "Nikolai",
    email: "nikolai@gmail.com",
    password: "password",
    age: 20
  })
file = URI.open("https://www.wikihow.com/images/thumb/9/95/Profile-People-Step-13.jpg/aid2555150-v4-728px-Profile-People-Step-13.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

user = User.create!({
    username: "Joana",
    email: "joana@gmail.com",
    password: "password",
    age: 23
  })
file = URI.open("https://assets.entrepreneur.com/content/3x2/1300/20150406145944-dos-donts-taking-perfect-linkedin-profile-picture-selfie-mobile-camera-2.jpeg")
  user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

user = User.create!({
    username: "Agnieszka",
    email: "agnieszka@gmail.com",
    password: "password",
    age: 28
  })
file = URI.open("https://static.businessinsider.com/image/5171c012eab8eabb72000001/image.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

user = User.create!({
    username: "Laura",
    email: "laura@gmail.com",
    password: "password",
    age: 20
  })
file = URI.open("https://www.gold.ac.uk/media/images-by-section/about-us/our-people/profile-hub/iqra-ba-english.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

user = User.create!({
    username: "Silje",
    email: "silje@gmail.com",
    password: "password",
    age: 26
  })
file = URI.open("https://naturalpod.com/wp-content/uploads/2016/02/Salt-Spring-Dina-Ottoni-Battistessa.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

user = User.create!({
    username: "Kim",
    email: "kim@gmail.com",
    password: "password",
    age: 27
  })
file = URI.open("https://cfl.dropboxstatic.com/static/images/jobs/jobs_2015/profile-home-makers-vflWnMtf7.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

user = User.create!({
    username: "Jeremy",
    email: "jeremy@gmail.com",
    password: "password",
    age: 27
  })
file = URI.open("http://www.leisureopportunities.com/images/995586_746594.jpg")
  user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

user = User.create!({
    username: "Ricardo",
    email: "ricardo@gmail.com",
    password: "password",
    age: 27
  })
file = URI.open("http://www.allinsonsphotography.co.uk/wp-content/uploads/2013/04/untitled-20.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

user = User.create!({
    username: "Amanda",
    email: "amanda@gmail.com",
    password: "password",
    age: 27
  })
file = URI.open("https://www.deputy.com/uploads/2018/08/The-Guide-to-Creating-a-Powerful-LinkedIn-Profile_Content-image2-min-1024x895.png")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')




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
    creator: User.find(rand(1..3)),
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

