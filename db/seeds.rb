# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'time'

CATEGORIES = %w(violin cello piano guitar drumkit bass saxophone trumpet trombone)
ADDRESSES = ["83 Marlboro Lane Eugene OR 97405", "62 rue Marx Dormoy Paris 75018", "17 quai fernand saguet 94700 Maisons-Alfort", "1 rue Victor Cousin Paris 75006", "13 rue de l'ancienne comedie Paris 75006", "14 rue de fleurus 59200 Tourcoing", "85 rue de Tournai 59200 Tourcoing", "Rudi-Dutschke-Str. 26 Berlin", "Eckertstr. 2b 10249 Berlin", "Berghain Berlin", "Eiffel Tower Paris", "kitkatclub berlin"]
rndr = Random.new

if Rails.env.development?
  puts "wiping the database"
  User.destroy_all
  Instrument.destroy_all
  Booking.destroy_all
else
  puts "you're not in development mode !"

end

puts "generating ten users and fifty instruments"
10.times do
  user = User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  )
  5.times do
    Instrument.create!(
      name: Faker::Music::GratefulDead.player + "'s " + Faker::Music.instrument,
      category:CATEGORIES.sample,
      description: Faker::Lorem.sentence(word_count: rndr.rand(5..30)),
      user_id: user.id,
      price: rndr.rand(5..15),
      address: ADDRESSES.sample
      )

  end
end

puts "#{User.count} users generated"
puts "#{Instrument.count} instruments generated"

puts "generating ten bookings"

users = User.all
instruments = Instrument.all
now = Time.now

10.times do
  Booking.create!(
  start_date: now,
  end_date: now.next_day(days = rndr.rand(1..3)),
  status:rndr.rand(0..2),
  instrument_id: instruments.sample.id,
  user_id: users.sample.id
  )
end

puts "#{Booking.count} bookings generated"
