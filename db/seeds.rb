# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserObjective.destroy_all
Objective.destroy_all
UserBadge.destroy_all
Badge.destroy_all
User.destroy_all

puts 'lets create users'

User.create!(
  email: 'riberac@gmail.com',
  password: '1234',
)

puts 'lets create badges'

Badge.create!(
  name: 'Le Gastronome'
)

Badge.create!(
  name: "L'Aventurier"
)

Badge.create!(
  name: 'Le Cycliste'
)

puts 'lets create userbadges'

Badge.all.each do |badge|
  UserBadge.create!(
  user: User.last,
  badge: badge,
  )
end

puts 'and now objectives'

Objective.create!(
  badge: Badge.first,
  name: "Specialité",
  description: "Au choix, manger du foie gras, du confit ou du magret. Un produit local bien sur !",
)

Objective.create!(
  badge: Badge.first,
  name: "Marchés",
  description: "Visiter un marché comme le marché au gras, le marché aux truffes ou le marché aux noix.",
)

Objective.create!(
  badge: Badge.first,
  name: "Marché festifs",
  description: "Visiter le fameux marché nocture de la Roche Chalais ou l'estival gourmande de Saint Aulaye.",
)

Objective.create!(
  badge: Badge.second,
  name: "Randonnée pedestre",
  description: "Découvrir l'eglise souterraine en réalisant la balade des Tourbieres (4km)",
)

Objective.create!(
  badge: Badge.second,
  name: "Canoë",
  description: "Faire du canoë sur la Dronne, vous pouvez vous renseigner au Camping du pont à Lisle ou chez Canoë Ribérac.",
)

Objective.create!(
  badge: Badge.second,
  name: "Paintball !!",
  description: "Faire un paintball avec vos amis dans l'un des sites de la communauté de commune, prévoir des rechanges !",
)

Objective.create!(
  badge: Badge.third,
  name: "Marché festifs",
  description: "Visiter le fameux marché nocture de la Roche Chalais ou l'estival gourmande de Saint Aulaye",
)

Objective.create!(
  badge: Badge.third,
  name: "Marché festifs",
  description: "Visiter le fameux marché nocture de la Roche Chalais ou l'estival gourmande de Saint Aulaye",
)

Objective.create!(
  badge: Badge.third,
  name: "Marché festifs",
  description: "Visiter le fameux marché nocture de la Roche Chalais ou l'estival gourmande de Saint Aulaye",
)

Objective.create!(
  badge: Badge.third,
  name: "Marché festifs",
  description: "Visiter le fameux marché nocture de la Roche Chalais ou l'estival gourmande de Saint Aulaye",
)


puts 'and now userobjectives'

UserObjective.create!(
  user_badge: UserBadge.first,
  objective: Objective.first,
)
UserObjective.create!(
  user_badge: UserBadge.second,
  objective: Objective.second,
)
UserObjective.create!(
  user_badge: UserBadge.third,
  objective: Objective.third,
)
