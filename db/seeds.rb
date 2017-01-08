# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do |i|
  Person.create do |person|
    first_name = Faker::Name.first_name
    gender = Person.genders.values.sample
    picture_gender = gender == Person.genders[:male] ? 'men' : 'women'

    person.first_name = first_name
    person.last_name = Faker::Name.last_name
    person.gender = gender
    person.birth_date = (20..40).to_a.sample.years.ago
    person.location = Faker::Address.country
    person.email = Faker::Internet.email(first_name)
    person.phone_number = Faker::PhoneNumber.cell_phone
    person.headline = Faker::Lorem.sentence(3, true)
    person.picture = "http://api.randomuser.me/portraits/#{picture_gender}/#{i}.jpg"
  end
end