def athlete_attributes (overrides = {})
 {
 	first_name:"David",						
 	last_name:"Bertrand",		   
 	birthdate:"12-01-1989",
 	address_one:"128 Old Suffolk Dr.",
 	address_two:"nil",
 	city:"Monroeville",
 	state:"PA",
 	zip:"15146",
 	image_file_name: "athlete.jpg"

 }.merge(overrides)
end


def racereg_attributes(overrides = {})
  {
    name: "Pittsburgh Olympic Triathlon, 2014",
    date: "2014-08-03",
    priority: "A",
    comment: "I want to win a fish"
  }.merge(overrides)
end

def user_attributes(overrides = {})
  {
    name: "Example User",
    email: "user@example.com",
    password: "secretword",
    password_confirmation: "secretword"
  }.merge(overrides)
end