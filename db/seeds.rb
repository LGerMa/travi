# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  {
    email: "user@travi.com",
    password: "user123",
    firstname: "user",
    lastname: "user",
    avatar:  Faker::Avatar.image,
    confirmed_at: Time.now,
    account_id: "user123"   
  }
) if User.where(email: "user@travo.com").blank?