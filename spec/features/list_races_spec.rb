require 'spec_helper'

describe "Viewing the list of races" do
	
	it "shows the races" do	

		race1 = Race.create(name: "2014 Pittsburgh Olympic",
                      swim_distance: "1500",
                      bike_distance: "40" ,
                       run_distance: "10",
                      race_category: "Olympic",
                      race_date: "2014-08-03")

		race2 = Race.create(name: "2014 Pittsburgh Sprint",
                      swim_distance: "600",
                      bike_distance: "20" ,
                       run_distance: "5",
                      race_category: "Sprint",
                      race_date: "2014-08-03")

		race3 = Race.create(name: "2014 Pittsburgh Adventure",
                      swim_distance: "0",
                      bike_distance: "40" ,
                       run_distance: "10",
                      race_category: "Adventure",
                      race_date: "2014-08-03")



		visit 'http://example.com/races'

		expect(page).to have_text("3 Races")
  		expect(page).to have_text("2014 Pittsburgh Olympic")
  		expect(page).to have_text("2014 Pittsburgh Sprint")
  		expect(page).to have_text("2014 Pittsburgh Adventure")

	end

it "shows the athletes registered for a specific race" do
end


end