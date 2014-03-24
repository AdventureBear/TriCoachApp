require 'spec_helper'

before do
  admin = User.create!(user_attributes(admin: true))
  sign_in(admin)
end

describe "Editing an athlete" do 
	it "updates the athlete and shows the athlete's updated details" do

		athlete = Athlete.create(athlete_attributes)

		visit athlete_url(athlete)

		click_link 'Edit'

		expect(current_path).to eq(edit_athlete_path(athlete))

		expect(find_field('First name').value).to eq(athlete.first_name)


		fill_in 'First name', with: "Updated First Name"
    
    	click_button 'Update Athlete'
    
    	expect(current_path).to eq(athlete_path(athlete))

 	  	expect(page).to have_text('Updated First Name')

	end
	
end


#expect(find_field('Title').value).to eq(movie.title)