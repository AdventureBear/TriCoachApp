require 'spec_helper'

describe "Viewing the list of athletes" do 

	it "Shows the athletes" do
		athlete1 = Athlete.create(first_name:"David",
								   last_name:"Bertrand",
								   birthdate:"12-01-1989")

		athlete2 = Athlete.create(first_name:"David",
								   last_name:"Wirth",
								   birthdate:"4-08-1988")

		athlete3 = Athlete.create(first_name:"Jane",
								   last_name:"Doe",
								   birthdate:"12-01-1989")		


		visit athletes_url

		expect(page).to have_text ("3 Athletes")
		expect(page).to have_text (athlete1.first_name)
		expect(page).to have_text (athlete1.last_name)
		expect(page).to have_text (athlete1.birthdate)

		expect(page).to have_text (athlete2.first_name)
		expect(page).to have_text (athlete3.first_name)
	end


#	it "does not show athletes older than the age of 30" do
#
# 		athlete = Athlete.new(athlete_attributes(birthdate: 40.years.ago))
#  		athlete.save

#  		visit athletes_path

 # 		expect(page).not_to have_text(athlete.first_name)

	end
	
end