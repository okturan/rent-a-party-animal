# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies  Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: "party@animal.com",
  password: "123456"
)

puts "Created a test user with the following info:"
puts "email: party@animal.com"
puts "password: 123456"

# 20.times do
#   PartyAnimal.create(
#     name: Faker::GreekPhilosophers.name,
#     age: rand(18..55),
#     main_interest: Faker::Hobby.activity,
#     secondary_interest: Faker::Hobby.activity,
#     price: rand(3..5),
#     description: Faker::Marketing.buzzwords,
#     user_id: 1
#   )
# end

# PartyAnimal.all.each do |partyanimal|
#     partyanimal.avatar.attach(URI.open(Faker::LoremPixel.image(size: "300x300", category: 'people')), filename: 'avatar.jpg')
#     puts partyanimal
# end

# .avatar.attach(io: File.open('app/assets/images/animals/bridal/bijou.png'), filename: 'bijou.png')
# .avatar.attach(io: File.open('app/assets/images/animals/bridal/snake.png'), filename: 'snake.png')
# .avatar.attach(io: File.open('app/assets/images/animals/bridal/tom.png'), filename: 'tom.png')
# .avatar.attach(io: File.open('app/assets/images/animals/bridal/alissa.png'), filename: 'alissa.png')

alissa = { name: "Alissa", age: 22, main_interest: "Dance Shows", secondary_interest: "Teaching how to dance like pro", description: "Do you wanna get everyone on the floor real fast?", price: 60, user_id: 1 }
tom = { name: "Tom", age: 32, main_interest: "Small Talks", secondary_interest: "Networking", description: "Throwing a party full of total strangers and need an icebreaker for those early hours? You've got it!", price: 80, user_id: 1 }
bijou = { name: "DJ Lil Bijou", age: 24, main_interest: "House, Techno and Indie Dance Mix", secondary_interest: "Cruise Ships & Private Parties", description: "Looking for a DJ that will rock the house?", price: 100, user_id: 1 }
pam = { name: "Pam", age: 32, main_interest: "Investment", secondary_interest: "Stock Market", description: "If you need someone to get you networks fast at a business event, I'll make sure to expand your contacts!", price: 180, user_id: 1 }
jim = { name: "Jim", age: 34, main_interest: "Marketing", secondary_interest: "mentorship to investers", description: "I'll gladly offer a business talk and some mentorship in investing for the party members", price: 220, user_id: 1 }
michael = { name: "Michael", age: 42, main_interest: "Techno music, DJ", secondary_interest: "cruise boats", description: "Book me if you're having a cruise party and I'll make sure the guests have the best time.", price: 190, user_id: 1 }
andrew = { name: "Andrew", age: 38, main_interest: "Western music, playing guitar", secondary_interest: "songwriting, acapella", description: "Every wedding needs a band and my band has the funk and experience for that!", price: 250, user_id: 1 }
angela = { name: "Angela", age: 32, main_interest: "singing, choirs", secondary_interest: "bouquet arrangements", description: "Highly experienced choir member and I've been singing in various events, you'll have the wedding of your dream!", price: 170, user_id: 1 }

[alissa, bijou, tom, pam, jim, michael, andrew, angela].each do |attributes|
  party_animal = PartyAnimal.create!(attributes)
  puts "Created #{party_animal.name}"
end
