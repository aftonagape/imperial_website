# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


member_list = [
    ["Afton Palmer", "DS-70188", "Omaha, NE", "ImperialCrew70188@gmail.com"],
    ["Colin Oestreich", "BH-47074", "Bellevue, NE", "rascalfett@hotmail.com"]
]

member_list.each do |name, tkid, location, email|
  Member.create( name: name, tkid: tkid, location: location, email: email )
end


10.times.each do
  Event.create(name: Faker::StarWars.planet, address: Faker::Address.street_address, start_time: Faker::Date.between(2.days.ago, Date.today), end_time: Faker::Date.between(2.days.ago, Date.today), info: Faker::StarWars.quote, coordinator: Faker::StarWars.character)
end