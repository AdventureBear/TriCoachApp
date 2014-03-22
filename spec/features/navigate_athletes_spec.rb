require 'spec_helper'

describe "Navigating athletes" do

  it "allows navigation from the detail page to the listing page" do

 	athlete = Athlete.create(athlete_attributes)

	visit athlete_url(athlete) 

	click_link "All Athletes"

	expect(current_path).to eq(athletes_path)

   end

	


  it "allows navigation from the listing page to the detail page" do
  
	athlete = Athlete.create(athlete_attributes)

	visit athletes_url

	click_link athlete.first_name

	expect(current_path).to eq(athlete_path(athlete))



  end
end