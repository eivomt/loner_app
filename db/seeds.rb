# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###################### USERS ######################

puts 'Creating users...'

user = User.create!({
  username: "saioa",
  email: "saio@gmail.com",
  password: "password",
  age: 26,
  about: "Before you start eating your lunch you should definetively check out this video of rubbery infant poo!"
})

puts "picture url 1"
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F2%2F2b%2FJessica_Ennis_%2528May_2010%2529_cropped.jpg&f=1&nofb=1")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/jpg')


puts "picture url 2"
user = User.create!({
    username: "Torfinn",
    email: "torfinn@gmail.com",
    password: "password",
    age: 43,
    about: "I am passionate about dancing. Can´t wait to show you my moves!"
  })

file = URI.open("https://images.askmen.com/1080x540/2016/01/25-021526-facebook_profile_picture_affects_chances_of_getting_hired.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 3"
user = User.create!({
    username: "Eivind",
    email: "eivind@gmail.com",
    password: "password",
    age: 30,
    about: "I love to go country skiing with my family. Nature is the place to be!"
  })
file = URI.open("https://i.kinja-img.com/gawker-media/image/upload/s--C-HE98Fg--/c_scale,fl_progressive,q_80,w_800/eibgv7kctah62iddzywm.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')


puts "picture url 4"
user = User.create!({
    username: "Alex",
    email: "alex@gmail.com",
    password: "password",
    age: 25,
    about: "When I´m finished coding, I code a bit more. This app helps me to disconect from my computer!"
  })
file = URI.open("https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&h=350")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')
puts "picture url 5"
user = User.create!({
    username: "Simen",
    email: "simen@gmail.com",
    password: "password",
    age: 27,
    about: "I enjoy getting out of the city with my vintage bike. The fact that it´s not best for mountain biking is a minor issue."
  })
file = URI.open("https://www.specialimages.co.uk/blog/wp-content/uploads/2012/07/corporate-people-photography-1.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 6"
user = User.create!({
    username: "Julian",
    email: "julian@gmail.com",
    password: "password",
    age: 27,
    about: "Yoga is life! Just remember to keep breathing!"
  })
file = URI.open("http://2hngz4f6s7y2dzzb25efew8p.wpengine.netdna-cdn.com/wp-content/uploads/2015/10/Michael-Fotis_Smart-Money-People.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 7"
user = User.create!({
    username: "Dennis",
    email: "dennis@gmail.com",
    password: "password",
    age: 40,
    about: "Nicolas Cage is my childhood hero. I aspire to be like him when I grow up."
  })
file = URI.open("https://www.thefamouspeople.com/profiles/images/nicolas-cage-2.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 8"
user = User.create!({
    username: "Nikolai",
    email: "nikolai@gmail.com",
    password: "password",
    age: 20,
    about: "My superpower is to sell you things you dont need. Selling something you need has no merith!"
  })
file = URI.open("https://www.wikihow.com/images/thumb/9/95/Profile-People-Step-13.jpg/aid2555150-v4-728px-Profile-People-Step-13.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 9"
user = User.create!({
    username: "Joana",
    email: "joana@gmail.com",
    password: "password",
    age: 23,
    about: "Join our community of programmers! It´s challenging and fun!"
  })
file = URI.open("https://assets.entrepreneur.com/content/3x2/1300/20150406145944-dos-donts-taking-perfect-linkedin-profile-picture-selfie-mobile-camera-2.jpeg")
  user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 10"

user = User.create!({
    username: "Agnieszka",
    email: "agnieszka@gmail.com",
    password: "password",
    age: 28,
    about: "Photography is my hobbie. You never know where your best shot is going to be!"
  })
file = URI.open("https://static.businessinsider.com/image/5171c012eab8eabb72000001/image.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 11"
user = User.create!({
    username: "Laura",
    email: "laura@gmail.com",
    password: "password",
    age: 20,
    about: "I love travelling and having a cup of tea while watching netflix."
  })
file = URI.open("https://www.gold.ac.uk/media/images-by-section/about-us/our-people/profile-hub/iqra-ba-english.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 12"

user = User.create!({
    username: "Silje",
    email: "silje@gmail.com",
    password: "password",
    age: 26,
    about: "Summer in Oslo is the best. I love taking frozen shrimps to the fjords, but a good barbecue will do as well!"
  })
file = URI.open("https://naturalpod.com/wp-content/uploads/2016/02/Salt-Spring-Dina-Ottoni-Battistessa.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 13"

user = User.create!({
    username: "Kim",
    email: "kim@gmail.com",
    password: "password",
    age: 27,
    about: "I work as an accountant. Hackathons are my secret hobbie."
  })
file = URI.open("https://cfl.dropboxstatic.com/static/images/jobs/jobs_2015/profile-home-makers-vflWnMtf7.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 14"

user = User.create!({
    username: "Jeremy",
    email: "jeremy@gmail.com",
    password: "password",
    age: 27,
    about: "A coffee and a baguette and Im ready for the day. A crep will do as well!"
  })
file = URI.open("http://www.leisureopportunities.com/images/995586_746594.jpg")
  user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 15"

user = User.create!({
    username: "Ricardo",
    email: "ricardo@gmail.com",
    password: "password",
    age: 27,
    about: "Why write 5 lines of code if you can do it in one? Refactorrrr!!!"
  })
file = URI.open("http://www.allinsonsphotography.co.uk/wp-content/uploads/2013/04/untitled-20.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 16"

user = User.create!({
    username: "Amanda",
    email: "amanda@gmail.com",
    password: "password",
    age: 27,
    about: "I work at a norwegian NGO called: de eldeste er de beste. Feel free to send me an email if you´d like to be a part of the team. Appreciate it also if you join us as a once of!"
  })
file = URI.open("https://www.deputy.com/uploads/2018/08/The-Guide-to-Creating-a-Powerful-LinkedIn-Profile_Content-image2-min-1024x895.png")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')

puts "picture url 17"

user = User.create!({
    username: "Max",
    email: "max@gmail.com",
    password: "password",
    age: 27,
    about: "I´ve made it through a 60km country skiing marathon eating only kiwis!"
  })
file = URI.open("https://jerrykieschnick.files.wordpress.com/2014/05/old-man-1.jpg")
user.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')






################################## VOLUNTEERING #####################################



  puts "Summer camp for kids!"
  event = Event.create!({
    name: "Summer camp",
    people_going: 24,
    people_needed: 6,
    categories: "volunteering",
    creator_id: 16,
    address: "Lørenskog, Norway",
    description: "Kids having a difficult year will have the best summer ever!",
    time: "March 10, 2020 20:45"
  })

  file = URI.open("https://images.unsplash.com/photo-1526976668912-1a811878dd37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80")
  event.photo.attach(io: file, filename: 'summercamp.png', content_type: 'image/png')

  puts "Soul kitchen"
  event = Event.create!({
    name: "Soul kitchen",
    people_going: 24,
    people_needed: 6,
    categories: "volunteering",
    creator_id: 16,
    address: "Kolstadgata 1, 0652 Oslo",
    description: "Serving is caring. Food for people in need.",
    time: "March 6, 2020 19:00"
  })

  file = URI.open("https://images.unsplash.com/photo-1541802645635-11f2286a7482?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80")
  event.photo.attach(io: file, filename: 'soulkitchen.png', content_type: 'image/png')

  puts "Bingo!"
  event = Event.create!({
    name: "Bingo!",
    people_going: 24,
    people_needed: 6,
    categories: "volunteering",
    creator_id: 16,
    address: "Colletts gate 52, 0456 Oslo",
    description: "Come to our nursing home and play BINGOOOO!",
    time: "March 16, 2020 14:00"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1583225809/bingo_sqougd.jpg")
  event.photo.attach(io: file, filename: 'bingo.png', content_type: 'image/png')

  puts "Grocery shopping"
  event = Event.create!({
    name: "Grocery shopping",
    people_going: 24,
    people_needed: 6,
    categories: "volunteering",
    creator_id: 16,
    address: "Grønland 30, 0188 Oslo",
    description: "Help our elders with their shopping and they will share their awesome stories with  you over a cozy cup of tea! Anytime is good!",
    time: "March 20, 2020 12:00"
  })

  file = URI.open("https://www.griswoldhomecare.com/wp-content/uploads/2019/02/Senior-Man-Receiving-Groceries.jpg")
  event.photo.attach(io: file, filename: 'shopping.png', content_type: 'image/png')

  puts "Bicycle rides"
  event = Event.create!({
    name: "Bicycle rides",
    people_going: 24,
    people_needed: 6,
    categories: "volunteering",
    creator_id: 16,
    address: "Grønland 30, 0188 Oslo",
    description: "Take our elders for a bicycle ride. We provide  the bicycle!",
    time: "March 12, 2020 11:00"
  })

  file = URI.open("https://ecomm2018.com/wp-content/uploads/2018/05/Cycling-without-age-800x440.jpg")
  event.photo.attach(io: file, filename: 'bicycle.png', content_type: 'image/png')


  puts "Christmas with the wise ones"
  event = Event.create!({
    name: "Christmas with mormor",
    people_going: 24,
    people_needed: 6,
    categories: "volunteering",
    creator_id: 16,
    address: "Grønland 30, 0188 Oslo",
    description: "Our elders would love to join your christmas dinner!",
    time: "December 24, 2021 16:00"
  })

  file = URI.open("https://images.unsplash.com/photo-1543598098-622a5e218f43?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80")
  event.photo.attach(io: file, filename: 'kayaking.png', content_type: 'image/png')



###############################FEELING ADVENTUROUS#############################


  puts "Creating event Midnight walk"
  event = Event.create!({
    name: "Midnight walk",
    people_going: 24,
    people_needed: 6,
    categories: "feeling adventurous",
    creator_id: 1,
    address: "Sognsveien 220, 0863 Oslo",
    description: "Let,s go for a walk and have fun!",
    time: "March 10, 2020 20:45"
  })

  file = URI.open("https://images.unsplash.com/photo-1464207687429-7505649dae38?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1952&q=80")
  event.photo.attach(io: file, filename: 'mountain_sun.png', content_type: 'image/png')

  puts "Creating event Hunt for light"
  event = Event.create!({
    name: "Hunt for light",
    people_going: 8,
    people_needed: 6,
    categories: "feeling adventurous",
    creator_id: 2,
    address: "Kongeveien 5, 0787 Oslo",
    description: "Trip to see the northern lights!",
    time: "March 14, 2020 10:30"
  })

  file = URI.open("https://images.unsplash.com/photo-1577456020912-85d0604ad403?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80")
  event.photo.attach(io: file, filename: 'light.png', content_type: 'image/png')

  puts "Creating event Kayaking in Oslo"
  event = Event.create!({
    name: "Kayaking in Oslo",
    people_going: 4,
    people_needed: 4,
    categories: "feeling adventurous",
    creator_id: 3,
    address: "Fossumveien, 1359 Eiksmarka",
    description: "Kayaking with new friends!",
    time: "March 29, 2020 12:30"
  })

  file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Kayaking_in_Alaska_P1010034.JPG/1200px-Kayaking_in_Alaska_P1010034.JPG")
  event.photo.attach(io: file, filename: 'kayaking.png', content_type: 'image/png')

  puts "Creating event Evening dip"
  event = Event.create!({
    name: "Evening dip",
    people_going: 6,
    people_needed: 6,
    categories: "feeling adventurous",
    creator_id: 4,
    address: "Kjelsåsveien, 0491 Oslo",
    description: "The water is not cold after a run!",
    time: "March 10, 2020 18:30"
  })

  file = URI.open("https://images.unsplash.com/photo-1569107368204-b859c1d5f98f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
  event.photo.attach(io: file, filename: 'dip.png', content_type: 'image/png')

  puts "Creating event Bike challange"
  event = Event.create!({
    name: "Bike challange",
    people_going: 8,
    people_needed: 4,
    categories: "feeling adventurous",
    creator_id: 5,
    address: "Tryvannsveien 64, 0791 Oslo",
    description: "50km before noon!",
    time: "March 18, 2020 14:30"
  })

  file = URI.open("https://images.unsplash.com/photo-1557687454-732732c1bf31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
  event.photo.attach(io: file, filename: 'bike.png', content_type: 'image/png')

  puts "Creating event Going down"
  event = Event.create!({

    name: "Going down",
    people_going: 3,
    people_needed: 1,
    categories: "feeling adventurous",
    creator_id: 6,
    address: "Trollvannsveien 1, 0490 Oslo",
    description: "Alpine skiing!",
    time: "March 12, 2020 09:30"
})

  file = URI.open("http://blog.davidgiralphoto.com/wp-content/uploads/2013/03/editorial-travel-montreal-winter-mont-royal-park-19.jpg")
  event.photo.attach(io: file, filename: 'down.png', content_type: 'image/png')

  puts "Creating event Under the stars"
  event = Event.create!({
    name: "Under the stars",
    people_going: 1,
    people_needed: 1,
    categories: "feeling adventurous",
    creator_id: 6,
    address: "Myrerveien, 0494 Oslo",
    description: "Let's hike to reach the top by sunries!",
    time: "March 10, 2020 03:30"
  })

  file = URI.open("https://images.unsplash.com/photo-1515444744559-7be63e1600de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
  event.photo.attach(io: file, filename: 'stars.png', content_type: 'image/png')

  puts "Creating event Trip with Chip"
  event = Event.create!({
    name: "Trip with Chip",
    people_going: 82,
    people_needed: 12,
    categories: "feeling adventurous",
    creator_id: 7,
    address: "Sons gate 3A, 0654 Oslo",
    description: "Always good to go for a hike!",
    time: "March 20, 2020 10:30"
  })

  file = URI.open("https://images.unsplash.com/photo-1501535033-a594139be346?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
  event.photo.attach(io: file, filename: 'chip.png', content_type: 'image/png')

  puts "Creating event Sunday skiing"
  event = Event.create!({
    name: "Sunday skiing",
    people_going: 10,
    people_needed: 54,
    categories: "feeling adventurous",
    creator_id: 8,
    address: "Inga Bjørnsons vei 1A, 0969 Oslo",
    description: "Let´s go cross country skiing!",
    time: "March 20, 2020 14:30"
  })

  file = URI.open("https://images.unsplash.com/photo-1518775053278-5a569f0be353?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80")
  event.photo.attach(io: file, filename: 'ski.png', content_type: 'image/png')

  puts "Creating event Trip trapp"
  event = Event.create!({
    name: "Trip trapp",
    people_going: 2,
    people_needed: 6,
    categories: "feeling adventurous",
    creator_id: 8,
    address: "Møllesvingen 20, 0854 Oslo",
    description: "Let's climb to the top!",
    time: "March 20, 2020 14:30"
  })

  file = URI.open("https://images.unsplash.com/photo-1502126324834-38f8e02d7160?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
  event.photo.attach(io: file, filename: 'trpo.png', content_type: 'image/png')



###################### HAPPENING NOW ######################

  puts "Creating event Sound of music"
  event = Event.create!({
    name: "Sound of music",
    people_going: 6,
    people_needed: 3,
    categories: "mingle",
    creator_id: 9,
    address: "Sonja Henies plass 2, 0185 Oslo",
    description: "Live impro jazz!",
    time: "March 6, 2020 17:00"
  })

  file = URI.open("https://images.unsplash.com/photo-1514525253161-7a46d19cd819?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=1867&q=80")
  event.photo.attach(io: file, filename: 'music.png', content_type: 'image/png')

  puts "Creating event Beer tasting"
  event = Event.create!({
    name: "Beer tasting",
    people_going: 10,
    people_needed: 8,
    categories: "mingle",
    creator_id: 10,
    address: "Schweigaards gate 34C, 0191 Oslo",
    description: "Let´s enjoy a few Schous Bryggeri deliciousness together and talk about all the world problems we won´t get to fix by drinking! We´re always opened to meet new people, hope you can join!",
    time: "March 6, 2020 15:00"
  })

  file = URI.open("https://images.unsplash.com/photo-1575444758702-4a6b9222336e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
  event.photo.attach(io: file, filename: 'beer.png', content_type: 'image/png')

  puts "Creating event Fun for dogs"
  event = Event.create!({
    name: "Fun for dogs",
    people_going: 10,
    people_needed: 8,
    categories: "mingle",
    creator_id: 1,
    address: "Monolitveien 6, 0375 Oslo",
    description: "Our dogs needs friends too!",
    time: "March 6, 2020 19:00"
  })

  file = URI.open("https://images.unsplash.com/photo-1539692443065-f8a9c4af6b5b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80")
  event.photo.attach(io: file, filename: 'dogs.png', content_type: 'image/png')

  puts "Creating event Hipster gardening"
  event = Event.create!({
    name: "Hipster gardening",
    people_going: 12,
    people_needed: 4,
    categories: "mingle",
    creator_id: 2,
    address: "Kirkeveien 50, 0368 Oslo",
    description: "Organic food and hydrophonics!",
    time: "March 7, 2020 19:00"
  })

  file = URI.open("https://images.unsplash.com/photo-1445052520430-32c8ebc92fe3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
  event.photo.attach(io: file, filename: 'garden.png', content_type: 'image/png')

  puts "Creating event Fun on the run"
  event = Event.create!({
    name: "Fun on the run",
    people_going: 20,
    people_needed: 83,
    categories: "sports",
    creator_id: 3,
    address: "Kirkeveien 50, 0368 Oslo",
    description: "Let´s run 5km!",
    time: "March 9, 2020 18:00"
  })

  file = URI.open("https://images.unsplash.com/photo-1476480862126-209bfaa8edc8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80")
  event.photo.attach(io: file, filename: 'jogg.png', content_type: 'image/png')

  puts "Creating event The book worms"
  event = Event.create!({
    name: "The book worms",
    people_going: 2,
    people_needed: 1,
    categories: "mingle",
    creator_id: 4,
    address: "0314, Problemveien 9, 0371 Oslo",
    description: "Book market!",
    time: "March 10, 2020 17:30"
  })

  file = URI.open("https://images.unsplash.com/photo-1573390609456-919e3ed0da7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80")
  event.photo.attach(io: file, filename: 'books.png', content_type: 'image/png')

  puts "Creating event Ball watching"
  event = Event.create!({
    name: "Ball watching",
    people_going: 6,
    people_needed: 2,
    categories: "sports",
    creator_id: 5,
    address: "Vulkan 26, 0175 Oslo",
    description: "Champions league match at the bar!",
    time: "March 8, 2020 17:30"
  })

  file = URI.open("https://images.unsplash.com/photo-1577705665410-a0b630d39aea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80")
  event.photo.attach(io: file, filename: 'watch.png', content_type: 'image/png')

  puts "Creating event What's cooking"
  event = Event.create!({
    name: "What's cooking",
    people_going: 12,
    people_needed: 2,
    categories: "mingle",
    creator_id: 6,
    address: "Maridalsveien 87 bygg 7, 0461 Oslo",
    description: "Learn to make carbonara!",
    time: "March 12, 2020 21:10"
  })

  file = URI.open("https://images.unsplash.com/photo-1528605248644-14dd04022da1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
  event.photo.attach(io: file, filename: 'cooking.png', content_type: 'image/png')

  puts "Creating event Code challange"
  event = Event.create!({
    name: "Code challange",
    people_going: 20,
    people_needed: 3,
    categories: "mingle",
    creator_id: 4,
    address: "Schweigaards gate 34C, 0191 Oslo",
    description: "Time for a hackathon!",
    time: "March 12, 2020 18:10"
  })

  file = URI.open("https://images.unsplash.com/photo-1523240795612-9a054b0db644?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
  event.photo.attach(io: file, filename: 'code.png', content_type: 'image/png')

  puts "Creating event Coffee cupping"
  event = Event.create!({
    name: "Coffee cupping",
    people_going: 32,
    people_needed: 6,
    categories: "mingle",
    creator_id: 6,
    address: "Grüners gate 1, 0552 Oslo",
    description: "Taste the best coffee in town!",
    time: "March 21, 2020 18:47"
  })

  file = URI.open("https://images.unsplash.com/photo-1485182708500-e8f1f318ba72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1985&q=80")
  event.photo.attach(io: file, filename: 'coffee.png', content_type: 'image/png')



###################### GAME ON ######################

  puts "Creating event Beer Pong"
  event = Event.create!({
    name: "Beer Pong",
    people_going: 4,
    people_needed: 2,
    categories: "game on",
    creator_id: 6,
    address: "Olaf Ryes plass 4, 0179 Oslo",
    description: "Self explanatory?!?",
    time: "March 19, 2020 23:47"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582821108/beerpong_lpa2ww.png")
  event.photo.attach(io: file, filename: 'beer.png', content_type: 'image/png')

  puts "Creating event Let's play!"
  event = Event.create!({
    name: "Let's play!",
    people_going: 1,
    people_needed: 1,
    categories: "game on",
    creator_id: 8,
    address: "Kirkegata 23, 0153 Oslo",
    description: "It´s game night!",
    time: "March 26, 2020 14:14"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582885374/card_new_ygnph4.png")
  event.photo.attach(io: file, filename: 'card.png', content_type: 'image/png')

  puts "Creating event Dart and fart"
  event = Event.create!({
    name: "Dart and fart",
    people_going: 4,
    people_needed: 2,
    categories: "game on",
    creator_id: 6,
    address: "Torggata 26, 0183 Oslo",
    description: "Hangover darts on a Sunday!",
    time: "March 18, 2020 18:32"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582885801/dart_last_qaogen.png")
  event.photo.attach(io: file, filename: 'dart.png', content_type: 'image/png')

  puts "Creating event Let's get rich"
  event = Event.create!({
    name: "Let's get rich",
    people_going: 8,
    people_needed: 3,
    categories: "game on",
    creator_id: 8,
    address: "Møllergata 5, 0179 Oslo",
    description: "Always a good time for monopoly!",
    time: "March 7, 2020 16:00"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582885801/monopoly_last_svooln.png")
  event.photo.attach(io: file, filename: 'monopoly.png', content_type: 'image/png')

  puts "Creating event No risk no reward"
  event = Event.create!({
    name: "No risk no reward",
    people_going: 16,
    people_needed: 12,
    categories: "game on",
    creator_id: 9,
    address: "Lilletorget 1, 0184 Oslo",
    description: "It´s risk time! It´s war time!",
    time: "March 8, 2020 13:30"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582885907/risk_last_vovjbt.png")
  event.photo.attach(io: file, filename: 'risk.png', content_type: 'image/png')

  puts "Creating event Ping pong"
  event = Event.create!({
    name: "Ping pong",
    people_going: 16,
    people_needed: 12,
    categories: "game on",
    creator_id: 7,
    address: "Jonsrudveien 6, 0274 Oslo",
    description: "How about a ping pong league?",
    time: "March 15, 2020 11:10"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582885800/tabletennis_last_kxuskj.png")
  event.photo.attach(io: file, filename: 'tabletennis.png', content_type: 'image/png')





###################### LET'S MOVE AROUND ######################

  puts "Creating event Missing one"
  event = Event.create!({
    name: "Missing one",
    people_going: 5,
    people_needed: 1,
    categories: "let's move around",
    creator_id: 8,
    address: "Marselis' gate 15B, 0551 Oslo",
    description: "Need our fifth player for basket!",
    time: "March 27, 2020 23:47"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582886551/basket_last_mwqhbw.png")
  event.photo.attach(io: file, filename: 'basket.png', content_type: 'image/png')

  puts "Creating event Jelly belly dancing"
  event = Event.create!({
    name: "Jelly belly dancing",
    people_going: 1,
    people_needed: 1,
    categories: "let's move around",
    creator_id: 2,
    address: "Rosenkrantz' gate 22, 0164 Oslo",
    description: "I´d loke to learn to dance salsa!",
    time: "March 6, 2020 15:00"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582886370/bellydance_new_fpfjxl.png")
  event.photo.attach(io: file, filename: 'bellydance.png', content_type: 'image/png')

  puts "Creating event King pin"
  event = Event.create!({
    name: "King pin",
    people_going: 4,
    people_needed: 5,
    categories: "let's move around",
    creator_id: 6,
    address: "Torggata 16, 0181 Oslo",
    description: "Bowling time!",
    time: "March 7, 2020 14:00"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582820759/bowling_lrf7pc.png")
  event.photo.attach(io: file, filename: 'bowling.png', content_type: 'image/png')

  puts "Creating event Football practice"
  event = Event.create!({
    name: "Football practice",
    people_going: 3,
    people_needed: 2,
    categories: "let's move around",
    creator_id: 8,
    address: "Gullhaugveien 8, 0484 Oslo",
    description: "We just want to hang out and do sports!",
    time: "March 10, 2020 20:00"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582820759/football_lc5kpu.png")
  event.photo.attach(io: file, filename: 'football.png', content_type: 'image/png')

  puts "Creating event Run is fun"
  event = Event.create!({
    name: "Run is fun",
    people_going: 3,
    people_needed: 2,
    categories: "let's move around",
    creator_id: 6,
    address: "Pilestredet 7, 0180 Oslo",
    description: "Running is easier when you aren´t alone!",
    time: "March 17, 2020 10:00"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582820759/jogging_jsoqtq.png")
  event.photo.attach(io: file, filename: 'jogging.png', content_type: 'image/png')

 puts "Creating event Game set match"
  event = Event.create!({
    name: "Game set match",
    people_going: 1,
    people_needed: 1,
    categories: "let's move around",
    creator_id: 1,
    address: "Jonsrudveien 6, 0274 Oslo",
    description: "I love tennis! Wanna play with me?",
    time: "March 19, 2020 10:00"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582886551/tennis_last_aidzqz.png")
  event.photo.attach(io: file, filename: 'tennis.png', content_type: 'image/png')

puts 'Finished!'

puts "one event in the passed for friends ive met"

  event = Event.create!({
    name: "Le Wagon!",
    people_going: 1,
    people_needed: 15,
    categories: "lewagon",
    creator_id: 9,
    address: "Schweigaardsgate 34, 0191 Oslo",
    description: "We made it! =)",
    time: "January 6, 2020 08:30"
  })

  file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,h_840,q_auto,w_1952/v1578570211/cpizdoyq3k1z06saej2m.webp")
  event.photo.attach(io: file, filename: 'tennis.png', content_type: 'image/png')


puts "seeds for event im going to join"
EventUser.create!(user_id: 2, event_id: 12)
EventUser.create!(user_id: 3, event_id: 12)
EventUser.create!(user_id: 11, event_id: 12)
EventUser.create!(user_id: 12, event_id: 12)
EventUser.create!(user_id: 8, event_id: 12)
EventUser.create!(user_id: 16, event_id: 12)



puts "Creating event users for le wagon, friends we´ve met!"

EventUser.create!(user_id: 1, event_id: 33)
EventUser.create!(user_id: 2, event_id: 33)
EventUser.create!(user_id: 3, event_id: 33)
EventUser.create!(user_id: 4, event_id: 33)
EventUser.create!(user_id: 5, event_id: 33)
EventUser.create!(user_id: 6, event_id: 33)
EventUser.create!(user_id: 7, event_id: 33)
EventUser.create!(user_id: 8, event_id: 33)
EventUser.create!(user_id: 9, event_id: 33)
EventUser.create!(user_id: 10, event_id: 33)
EventUser.create!(user_id: 14, event_id: 33)
EventUser.create!(user_id: 15, event_id: 33)
EventUser.create!(user_id: 17, event_id: 33)

puts "Creating event users"


EventUser.create!(user_id: 1, event_id: 1)
EventUser.create!(user_id: 3, event_id: 1)
EventUser.create!(user_id: 2, event_id: 2)
EventUser.create!(user_id: 4, event_id: 4)
EventUser.create!(user_id: 6, event_id: 6)
EventUser.create!(user_id: 3, event_id: 13)
EventUser.create!(user_id: 8, event_id: 1)
EventUser.create!(user_id: 7, event_id: 4)
EventUser.create!(user_id: 9, event_id: 6)
EventUser.create!(user_id: 10, event_id: 1)
EventUser.create!(user_id: 11, event_id: 14)
EventUser.create!(user_id: 12, event_id: 13)
EventUser.create!(user_id: 13, event_id: 6)
EventUser.create!(user_id: 14, event_id: 7)
EventUser.create!(user_id: 1, event_id: 8)
EventUser.create!(user_id: 7, event_id: 9)
EventUser.create!(user_id: 15, event_id: 10)
EventUser.create!(user_id: 13, event_id: 11)
EventUser.create!(user_id: 5, event_id: 10)
EventUser.create!(user_id: 9, event_id: 2)

