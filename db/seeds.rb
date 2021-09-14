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

20.times do
  PartyAnimal.create(
    name: Faker::GreekPhilosophers.name,
    age: rand(18..55),
    main_interest: Faker::Hobby.activity,
    secondary_interest: Faker::Hobby.activity,
    price: rand(3..5),
    description: Faker::Marketing.buzzwords,
    user_id: 1,
  )
end

puts "Created 20 unique party goers"
