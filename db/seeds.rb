# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'time'

rndr = Random.new




















def descriptions(category)
  ["My #{category} is two years old, everything works fine! I have updated the model, thus looking for a person who can take care of it greatly.",
    "My beloved #{category} is 3 years old, I do not use it anymore.  Ideal for students and young players picking up the instrument for the first time.",
    "A #{category} with especially good tuning on Ab & Eb, the JP146 Atom is well known for matching the performance level of instrument many times its price.",
    "An ideal starter #{category}, it is capable of playing all musical styles from Classical to Jazz with a full mellow sound.",
    "This student model #{category} is a favourite with beginners and first time players alike.",
    "Younger players can start with this #{category}, as the curved headjoint before easily swapping to the straight version when they are ready.",
    "This #{category} has an open wrap design and thumb hook to support players with smaller hands.",
    "If you are thinking of taking up the #{category} or as a professional player looking for an affordable one then this is certainly the one that you should take a serious look at.",
    "Despite its small form factor it still performs well in line with other much more expensive (and larger) models.",
    "My #{category} is perfect for beginners and first time players.",
    "It's a 15 year old American Strat! The neck of the #{category} slides easily, tone is great! It's great for funk players!",
    "A beautiful #{category} that inherits birch wood, with upgraded metal parts. Great for playing metal music! Comes with a double kick!",
    "A great #{category}!",
    "My favorite #{category}, lightly used.",
    "I'm renting my #{category} because I need some extra cash.",
    "I hope you like my #{category}! It's brand new."
].sample

end


DRUMS = [
"https://images.unsplash.com/photo-1519892300165-cb5542fb47c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1524230659092-07f99a75c013?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1461784121038-f088ca1e7714?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1504653601220-f1a8ece25e4a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1543443374-b6fe10a6ab7b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
]

SAX = [
"https://images.unsplash.com/photo-1499314722718-0827eb4deb71?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1554697712-8f2640137f4d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1536387737404-8a6338574dd7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
]

GUITARS = [
"https://images.unsplash.com/photo-1516924962500-2b4b3b99ea02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1515850031371-8230418d8aed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1538586715268-71bbafed97ed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1485278537138-4e8911a13c02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1510915361894-db8b60106cb1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1541689592655-f5f52825a3b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1525201548942-d8732f6617a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1519640350407-953bc0614f4c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1514649923863-ceaf75b7ec00?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
"https://images.unsplash.com/photo-1508186736123-44a5fcb36f9f?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
]

ADDRESSES = [
"Oranienburger Str. #{rndr.rand(1..10)}, 10178 Berlin",
"Brandenburgische Straße #{rndr.rand(1..50)} Berlin 12555",
"Gitscginer Str #{rndr.rand(1..50)} Berlin 10969",
"Alte Jakobstraße #{rndr.rand(1..50)}, 10179 Berlin",
"Karl-Marx-Allee #{rndr.rand(1..40)}, 10178 Berlin",
"Unter den Linden #{rndr.rand(1..10)}, 10117 Berlin",
"Alte Schönhauser Str. #{rndr.rand(1..50)}, 10119 Berlin",
"Oranienburger Str. #{rndr.rand(1..10)}, 10178 Berlin",
"Brandenburgische Straße #{rndr.rand(1..50)} Berlin 12555",
"Gitscginer Str #{rndr.rand(1..50)} Berlin 10969",
"Alte Jakobstraße #{rndr.rand(1..50)}, 10179 Berlin",
"Karl-Marx-Allee #{rndr.rand(1..40)}, 10178 Berlin",
"Unter den Linden #{rndr.rand(1..10)}, 10117 Berlin",
"Alte Schönhauser Str. #{rndr.rand(1..50)}, 10119 Berlin",
"Oranienburger Str. #{rndr.rand(1..10)}, 10178 Berlin",
"Brandenburgische Straße #{rndr.rand(1..50)} Berlin 12555",
"Gitscginer Str #{rndr.rand(1..50)} Berlin 10969",
"Alte Jakobstraße #{rndr.rand(1..50)}, 10179 Berlin",
"Karl-Marx-Allee #{rndr.rand(1..40)}, 10178 Berlin",
"Unter den Linden #{rndr.rand(1..10)}, 10117 Berlin",
"Alte Schönhauser Str. #{rndr.rand(1..50)}, 10119 Berlin",
"Oranienburger Str. #{rndr.rand(1..10)}, 10178 Berlin",
"Brandenburgische Straße #{rndr.rand(1..50)} Berlin 12555",
"Gitscginer Str #{rndr.rand(1..50)} Berlin 10969",
"Alte Jakobstraße #{rndr.rand(1..50)}, 10179 Berlin",
"Karl-Marx-Allee #{rndr.rand(1..40)}, 10178 Berlin",
"Unter den Linden #{rndr.rand(1..10)}, 10117 Berlin",
"Alte Schönhauser Str. #{rndr.rand(1..50)}, 10119 Berlin"
]


if Rails.env.development?
  puts "wiping the database"
  User.destroy_all
  Instrument.destroy_all
  Booking.destroy_all
else
  puts "you're not in development mode !"

end

puts "generating a shit ton of users and more tons of instruments"
10.times do
  user = User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  admin:false
  )
  5.times do
    Instrument.create!(
      name: Faker::Music::GratefulDead.player + "'s Guitar",
      category: "Guitar",
      description: descriptions("Guitar"),
      user_id: user.id,
      price: rndr.rand(5..15),
      address: ADDRESSES.sample,
      remote_photo_url: GUITARS.sample
      )
  end
end

10.times do
  user = User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  admin:false
  )
  5.times do
    Instrument.create!(
      name: Faker::Music::GratefulDead.player + "'s Saxophone",
      category: "Saxophone",
      description: descriptions("Saxophone"),
      user_id: user.id,
      price: rndr.rand(5..15),
      address: ADDRESSES.sample,
      remote_photo_url: SAX.sample
      )
  end
end

10.times do
  user = User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  admin:false
  )
  5.times do
    Instrument.create!(
      name: Faker::Music::GratefulDead.player + "'s Drum Kit",
      category: "Drum Kit",
      description: descriptions("Drum Kit"),
      user_id: user.id,
      price: rndr.rand(5..15),
      address: ADDRESSES.sample,
      remote_photo_url: DRUMS.sample
      )
  end
end

puts "#{User.count} users generated"
puts "#{Instrument.count} instruments generated"

puts "generating ten bookings"

users = User.all
instruments = Instrument.all
now = Time.now

50.times do
  Booking.create!(
  start_date: now,
  end_date: now.next_day(days = rndr.rand(1..3)),
  status:rndr.rand(0..2),
  instrument_id: instruments.sample.id,
  user_id: users.sample.id
  )
end

puts "#{Booking.count} bookings generated"
