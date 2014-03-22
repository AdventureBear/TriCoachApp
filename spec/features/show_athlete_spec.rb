require 'spec_helper'

describe "Viewing an individual athlete" do 

	it "Shows the athete's details"  do

		athlete = Athlete.create(athlete_attributes)

		racereg = Racereg.create(racereg_attributes)

		visit athlete_url(athlete)

		expect(page).to have_text (athlete.first_name)
		expect(page).to have_text (athlete.last_name)
		expect(page).to have_text (athlete.birthdate)
		expect(page).to have_text (athlete.age)
		expect(page).to have_text (athlete.address_one)
		expect(page).to have_text (athlete.address_two)
		expect(page).to have_text (athlete.city)
		expect(page).to have_text (athlete.state)
		expect(page).to have_text (athlete.zip)				
		expect(page).to have_selector("img[src$='#{athlete.image_file_name}']")

		expect(page).to have_text (athlete.racereg.nextrace.name)
	end

	
end