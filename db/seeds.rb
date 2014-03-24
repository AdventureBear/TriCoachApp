# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Athlete.create!([
  {
    first_name: "David",
    last_name: "Bertrand",
    birthdate: "1990-05-02"
  },
  {
    first_name: "John",
    last_name: "Torhan",
    birthdate: "1953-05-02"
  },
  {
    first_name: "Stephanie",
    last_name: "Stambaugh",
    birthdate: "1986-05-02"
  },
  {
    first_name: "Laura",
    last_name: "Brookfield",
    birthdate: "1964-05-02"
  }
])


User.create!([


{
  name: "Demo Admin",
  email: "demo_admin@gmail.com",
  password: "Demo2014",
  password_confirmation: "Demo2014",
 admin: "True",
  coach: "True",
  athlete: "True"
},

{
  name: "Demo Coach",
  email: "demo_coach@gmail.com",
  password: "Demo2014",
  password_confirmation: "Demo2014",
  admin: "False",
  coach: "True",
  athlete: "True"
},

{
  name: "Demo Athlete",
  email: "demo_athlete@gmail.com",
  password: "Demo2014",
  password_confirmation: "Demo2014",
  admin: "False",
  coach: "False",
  athlete: "True"
}


])