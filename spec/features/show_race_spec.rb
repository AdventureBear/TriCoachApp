require 'spec_helper'

describe "Viewing an individual Race" do 

	it "Shows the race's details"  do

	race = Race.create(name: "2014 Pittsburgh Olympic",
                      swim_distance: "1500",
                      bike_distance: "40" ,
                       run_distance: "10",
                      race_category: "Olympic",
                      race_date: "2014-08-03",
                      race_url: "http://friendsoftheriverfront.org/triathlon/")



#		race = Race.create(race_attributes)

# movie = Movie.create(title: "Iron Man",
#                       rating: "PG-13",
#                       total_gross: 318412101.00,
#                       description: "Tony Stark builds an armored suit to fight the throes of evil",
#                       released_on: "2008-05-02")



#		racereg = Racereg.create(racereg_attributes)

		visit race_url(race)

		expect(page).to have_text (race.name)
		expect(page).to have_text (race.description)
		expect(page).to have_text (race.image_url)
		expect(page).to have_text (race.race_url)
		expect(page).to have_text (race.swim_distance)
		expect(page).to have_text (race.bike_distance)
		expect(page).to have_text (race.run_distance)
		expect(page).to have_text (race.race_category)
		expect(page).to have_text (race.race_date)	
		expect(page).to have_text (race.city)
		expect(page).to have_text (race.state)
		expect(page).to have_text (race.zip_code)
		expect(page).to have_text (race.price)	
		expect(page).to have_text (race.comments)	


		#expect(page).to have_selector("img[src$='#{race.image_file_name}']")

#		expect(page).to have_text (race.racereg.nextrace.name)
	end

	
end