# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



###################### FEELING ADVENTURES ######################

  puts "Creating event Midnight walk"
  event = Event.create!({
    name: "Midnight walk"
    people_going: 24
    people_needed: 3
    categories: ["nature", "hiking", "feeling adventures"]
    creator: "Julian"
    address: "Sognsveien 220, 0863 Oslo"
    description: "#"
    time: "February 28, 2020 20:45"
  })

  file = URI.open("https://unsplash.com/photos/NhU0nUR7920")
  event.photo.attach(io: file, filename: 'mountain_sun.png', content_type: 'image/png')
end

  puts "Creating event Hunt for light"
  event = Event.create!({
    name: "Hunt for light"
    people_going: 8
    people_needed: 6
    categories: ["nature", "hiking", "feeling adventures"]
    creator: "Dennis"
    address: "Kongeveien 5, 0787 Oslo"
    description: "#"
    time: "March 3, 2020 10:30"
  })

  file = URI.open("https://unsplash.com/photos/JOFKIzygu70")
  event.photo.attach(io: file, filename: 'light.png', content_type: 'image/png')
end


  puts "Creating event Kayaking in Oslo"
  event = Event.create!({
    name: "Kayaking in Oslo"
    people_going: 4
    people_needed: 2
    categories: ["nature", "kayaking", "feeling adventures"]
    creator: "Simen"
    address: "Fossumveien, 1359 Eiksmarka"
    description: "#"
    time: "March 1, 2020 08:30"
  })

  file = URI.open("https://unsplash.com/photos/7QBElZQC")
  event.photo.attach(io: file, filename: 'kayaking.png', content_type: 'image/png')
end


  puts "Creating event Evening dip"
  event = Event.create!({
    name: "Evening dip"
    people_going: 6
    people_needed: 6
    categories: ["nature", "swim", "feeling adventures"]
    creator: "Eivind"
    address: "Kjelsåsveien, 0491 Oslo"
    description: "#"
    time: "March 10, 2020 18:30"
  })

  file = URI.open("https://unsplash.com/photos/1tBVguWR3Mc")
  event.photo.attach(io: file, filename: 'dip.png', content_type: 'image/png')
end


  puts "Creating event Bike challange"
  event = Event.create!({
    name: "Bike challange"
    people_going: 8
    people_needed: 1
    categories: ["nature", "bike", "feeling adventures"]
    creator: "Saio"
    address: "Tryvannsveien 64, 0791 Oslo"
    description: "#"
    time: "March 2, 2020 14:30"
  })

  file = URI.open("https://unsplash.com/photos/XZGNGLdsy6U")
  event.photo.attach(io: file, filename: 'bike.png', content_type: 'image/png')
end


  puts "Creating event Going down"
  event = Event.create!({
    name: "Going down"
    people_going: 3
    people_needed: 1
    categories: ["nature", "skiing", "feeling adventures"]
    creator: "Saio"
    address: "Trollvannsveien 1, 0490 Oslo"
    description: "#"
    time: "March 12, 2020 09:30"
  })

  file = URI.open("https://unsplash.com/photos/XZGNGLdsy6U")
  event.photo.attach(io: file, filename: 'down.png', content_type: 'image/png')
end


  puts "Creating event Under the stars"
  event = Event.create!({
    name: "Under the stars"
    people_going: 1
    people_needed: 1
    categories: ["nature", "hiking", "feeling adventures"]
    creator: "Saio"
    address: "Myrerveien, 0494 Oslo"
    description: "#"
    time: "March 10, 2020 03:30"
  })

  file = URI.open("https://unsplash.com/photos/yBgC-qVCxMg")
  event.photo.attach(io: file, filename: 'stars.png', content_type: 'image/png')
end

  puts "Creating event Trip with Chip"
  event = Event.create!({
    name: "Trip with Chip"
    people_going: 82
    people_needed: 12
    categories: ["nature", "hiking", "feeling adventures"]
    creator: "Dennis"
    address: "Sons gate 3A, 0654 Oslo"
    description: "#"
    time: "March 1, 2020 10:30"
  })

  file = URI.open("https://unsplash.com/photos/4AU8t0aQHVI")
  event.photo.attach(io: file, filename: 'chip.png', content_type: 'image/png')
end

  puts "Creating event Sunday skiing"
  event = Event.create!({
    name: "Sunday skiing"
    people_going: 10
    people_needed: 54
    categories: ["nature", "skiing", "feeling adventures"]
    creator: "Nikolai"
    address: "Inga Bjørnsons vei 1A, 0969 Oslo"
    description: "#"
    time: "March 20, 2020 14:30"
  })

  file = URI.open("https://unsplash.com/photos/PcVqr8v4XaA")
  event.photo.attach(io: file, filename: 'ski.png', content_type: 'image/png')
end

  puts "Creating event Trip trapp"
  event = Event.create!({
    name: "Trip trapp"
    people_going: 2
    people_needed: 6
    categories: ["nature", "hiking", "feeling adventures"]
    creator: "Eivind"
    address: "Møllesvingen 20, 0854 Oslo"
    description: "#"
    time: "March 20, 2020 14:30"
  })

  file = URI.open("https://unsplash.com/photos/IQxcuHBF7Uo")
  event.photo.attach(io: file, filename: 'trpo.png', content_type: 'image/png')
end





###################### HAPPENING NOW ######################

  puts "Creating event Sound of music"
  event = Event.create!({
    name: "Sound of music"
    people_going: 6
    people_needed: 3
    categories: ["music", "consert", "happening now"]
    creator: "Saio"
    address: "Sonja Henies plass 2, 0185 Oslo"
    description: "#"
    time: "February 28, 2020 21:00"
  })

  file = URI.open("https://unsplash.com/photos/ZhQCZjr9fHo")
  event.photo.attach(io: file, filename: 'music.png', content_type: 'image/png')
end

  puts "Creating event Beer tasting"
  event = Event.create!({
    name: "Beer tasting"
    people_going: 10
    people_needed: 8
    categories: ["beer", "social", "happening now"]
    creator: "Eivind"
    address: "Schweigaards gate 34C, 0191 Oslo"
    description: "#"
    time: "February 28, 2020 19:00"
  })

  file = URI.open("https://unsplash.com/photos/2GNBoMgKYEo")
  event.photo.attach(io: file, filename: 'beer.png', content_type: 'image/png')
end


  puts "Creating event Fun for dogs"
  event = Event.create!({
    name: "Fun for dogs"
    people_going: 10
    people_needed: 8
    categories: ["dog", "social", "happening now"]
    creator: "Nikolai"
    address: "Monolitveien 6, 0375 Oslo"
    description: "#"
    time: "February 28, 2020 19:00"
  })

  file = URI.open("https://unsplash.com/photos/B53_-Dau9M4")
  event.photo.attach(io: file, filename: 'dogs.png', content_type: 'image/png')
end


  puts "Creating event Hipster gardening"
  event = Event.create!({
    name: "Hipster gardening"
    people_going: 12
    people_needed: 4
    categories: ["gardening", "flowers", "happening now"]
    creator: "Julian"
    address: "Kirkeveien 50, 0368 Oslo"
    description: "#"
    time: "February 28, 2020 19:00"
  })

  file = URI.open("https://unsplash.com/photos/ME97jMtESVo")
  event.photo.attach(io: file, filename: 'garden.png', content_type: 'image/png')
end


  puts "Creating event Fun on the run"
  event = Event.create!({
    name: "Fun on the run"
    people_going: 20
    people_needed: 83
    categories: ["run", "sports", "happening now"]
    creator: "Joanna"
    address: "Kirkeveien 50, 0368 Oslo"
    description: "#"
    time: "February 28, 2020 18:00"
  })

  file = URI.open("https://unsplash.com/photos/PHIgYUGQPvU")
  event.photo.attach(io: file, filename: 'jogg.png', content_type: 'image/png')
end


  puts "Creating event The book worms"
  event = Event.create!({
    name: "The book worms"
    people_going: 2
    people_needed: 1
    categories: ["books", "nerd", "happening now"]
    creator: "Torfinn"
    address: "0314, Problemveien 9, 0371 Oslo"
    description: "#"
    time: "February 28, 2020 17:30"
  })

  file = URI.open("https://unsplash.com/photos/tnWvvXG8HM0")
  event.photo.attach(io: file, filename: 'books.png', content_type: 'image/png')
end


  puts "Creating event Ball watching"
  event = Event.create!({
    name: "Ball watching"
    people_going: 6
    people_needed: 2
    categories: ["sports", "football", "happening now"]
    creator: "Torfinn"
    address: "Vulkan 26, 0175 Oslo"
    description: "#"
    time: "February 28, 2020 17:30"
  })

  file = URI.open("https://unsplash.com/photos/EqbE_NkXPfc")
  event.photo.attach(io: file, filename: 'watch.png', content_type: 'image/png')
end


  puts "Creating event What's cooking"
  event = Event.create!({
    name: "What's cooking"
    people_going: 12
    people_needed: 2
    categories: ["cooking", "food", "happening now"]
    creator: "Eivind"
    address: "Maridalsveien 87 bygg 7, 0461 Oslo"
    description: "#"
    time: "February 28, 2020 21:10"
  })

  file = URI.open("https://unsplash.com/photos/W3SEyZODn8U")
  event.photo.attach(io: file, filename: 'cooking.png', content_type: 'image/png')
end

  puts "Creating event Code challange"
  event = Event.create!({
    name: "Code challange"
    people_going: 20
    people_needed: 3
    categories: ["code", "technology", "happening now"]
    creator: "Joanna"
    address: "Schweigaards gate 34C, 0191 Oslo"
    description: "#"
    time: "February 28, 2020 18:10"
  })

  file = URI.open("https://unsplash.com/photos/XkKCui44iM0")
  event.photo.attach(io: file, filename: 'code.png', content_type: 'image/png')
end

  puts "Creating event Coffee cupping"
  event = Event.create!({
    name: "Coffee cupping"
    people_going: 32
    people_needed: 6
    categories: ["coffee", "social", "happening now"]
    creator: "Torfinn"
    address: "Grüners gate 1, 0552 Oslo"
    description: "#"
    time: "February 28, 2020 18:47"
  })

  file = URI.open("https://unsplash.com/photos/6bKpHAun4d8")
  event.photo.attach(io: file, filename: 'coffee.png', content_type: 'image/png')
end









###################### GAME ON ######################

  puts "Creating event Beer Pong"
  event = Event.create!({
    name: "Beer Pong"
    people_going: 4
    people_needed: 2
    categories: ["beer", "game", "game on"]
    creator: "Simen"
    address: "Olaf Ryes plass 4, 0179 Oslo"
    description: "#"
    time: "March 19, 2020 23:47"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582821108/beerpong_lpa2ww.png")
  event.photo.attach(io: file, filename: 'beer.png', content_type: 'image/png')
end



  puts "Creating event Let's play!"
  event = Event.create!({
    name: "Let's play!"
    people_going: 1
    people_needed: 1
    categories: ["card", "game", "game on"]
    creator: "Saio"
    address: "Kirkegata 23, 0153 Oslo"
    description: "#"
    time: "March 26, 2020 14:14"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582821107/card_pzwxfj.png")
  event.photo.attach(io: file, filename: 'card.png', content_type: 'image/png')
end


  puts "Creating event Dart and fart"
  event = Event.create!({
    name: "Dart and fart"
    people_going: 4
    people_needed: 2
    categories: ["dart", "game", "game on"]
    creator: "Nikolai"
    address: "Torggata 26, 0183 Oslo"
    description: "#"
    time: "March 18, 2020 18:32"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582821108/dart_kbootc.png")
  event.photo.attach(io: file, filename: 'dart.png', content_type: 'image/png')
end


  puts "Creating event Let's get rich"
  event = Event.create!({
    name: "Let's get rich"
    people_going: 8
    people_needed: 3
    categories: ["dart", "game", "game on"]
    creator: "Alex"
    address: "Møllergata 5, 0179 Oslo"
    description: "#"
    time: "March 6, 2020 16:00"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582821108/monopoly_ussves.png")
  event.photo.attach(io: file, filename: 'monopoly.png', content_type: 'image/png')
end


  puts "Creating event No risk no reward"
  event = Event.create!({
    name: "No risk no reward"
    people_going: 16
    people_needed: 12
    categories: ["risk", "game", "game on"]
    creator: "Eivind"
    address: "Lilletorget 1, 0184 Oslo"
    description: "#"
    time: "March 3, 2020 13:30"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582821108/risk_pclzgk.png")
  event.photo.attach(io: file, filename: 'risk.png', content_type: 'image/png')
end


  puts "Creating event Ping pong"
  event = Event.create!({
    name: "Ping pong"
    people_going: 16
    people_needed: 12
    categories: ["game", "ping pong", "game on"]
    creator: "Julian"
    address: "Jonsrudveien 6, 0274 Oslo"
    description: "#"
    time: "March 15, 2020 11:10"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582821108/tabletennis_nzryr2.png")
  event.photo.attach(io: file, filename: 'tabletennis.png', content_type: 'image/png')
end







###################### LET'S MOVE AROUND ######################

  puts "Creating event Missing one"
  event = Event.create!({
    name: "Missing one"
    people_going: 5
    people_needed: 1
    categories: ["basket", "game", "let's move around"]
    creator: "Julian"
    address: "Marselis' gate 15B, 0551 Oslo"
    description: "#"
    time: "March 27, 2020 23:47"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582820759/basket_v305q7.png")
  event.photo.attach(io: file, filename: 'basket.png', content_type: 'image/png')
end


  puts "Creating event Jelly belly dancing"
  event = Event.create!({
    name: "Jelly belly dancing"
    people_going: 1
    people_needed: 1
    categories: ["dancing", "belly", "let's move around"]
    creator: "Torfinn"
    address: "Rosenkrantz' gate 22, 0164 Oslo"
    description: "#"
    time: "March 6, 2020 15:00"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582820759/bellydance_zkemaj.png")
  event.photo.attach(io: file, filename: 'bellydance.png', content_type: 'image/png')



  puts "Creating event King pin"
  event = Event.create!({
    name: "King pin"
    people_going: 4
    people_needed: 5
    categories: ["bowling", "game", "let's move around"]
    creator: "Saio"
    address: "Torggata 16, 0181 Oslo"
    description: "#"
    time: "March 7, 2020 14:00"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582820759/bowling_lrf7pc.png")
  event.photo.attach(io: file, filename: 'bowling.png', content_type: 'image/png')
end



  puts "Creating event Football practice"
  event = Event.create!({
    name: "Football practice"
    people_going: 3
    people_needed: 2
    categories: ["football", "sports", "let's move around"]
    creator: "Alex"
    address: "Gullhaugveien 8, 0484 Oslo"
    description: "#"
    time: "March 3, 2020 20:00"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582820759/football_lc5kpu.png")
  event.photo.attach(io: file, filename: 'football.png', content_type: 'image/png')
end


  puts "Creating event Run is fun"
  event = Event.create!({
    name: "Run is fun"
    people_going: 3
    people_needed: 2
    categories: ["jogging", "sports", "let's move around"]
    creator: "Dennis"
    address: "Pilestredet 7, 0180 Oslo"
    description: "#"
    time: "March 5, 2020 10:00"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582820759/jogging_jsoqtq.png")
  event.photo.attach(io: file, filename: 'jogging.png', content_type: 'image/png')
end


 puts "Creating event Game set match"
  event = Event.create!({
    name: "Game set match"
    people_going: 1
    people_needed: 1
    categories: ["tennis", "sports", "let's move around"]
    creator: "Saio"
    address: "Jonsrudveien 6, 0274 Oslo"
    description: "#"
    time: "March 5, 2020 10:00"
  })

  file = URI.open("https://res.cloudinary.com/dzzozchgg/image/upload/v1582820760/tennis_egur0q.png")
  event.photo.attach(io: file, filename: 'tennis.png', content_type: 'image/png')
end

puts 'Finished!'
