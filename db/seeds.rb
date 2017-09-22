# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'lets create users'

User.create!(
  email: 'romain@gmail.com',
  first_name: 'Romain',
  password: '123456',
)

User.create!(
  email: 'charles@gmail.com',
  first_name: 'Charles',
  password: '123456',
)

User.create!(
  email: 'kos@gmail.com',
  first_name: 'Kos',
  password: '123456',
)

User.create!(
  email: 'mathieu@gmail.com',
  first_name: 'Mathieu',
  password: '123456',
)

puts 'lets create badges'

Badge.create!(
  name: 'Le gastronome'
)

Badge.create!(
  name: 'Le débutant'
)

Badge.create!(
  name: 'Le randonneur'
)

Badge.create!(
  name: 'Le cycliste'
)

Badge.create!(
  name: 'Familial'
)

Badge.create!(
  name: 'Découverte'
)

Userbadge.create!(
  user_id:@
)
