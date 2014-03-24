require 'spec_helper'

before do
  admin = User.create!(user_attributes(admin: true))
  sign_in(admin)
end

describe "Creating a new athlete" do 
  it "saves the athlete and shows the new athletes's details" do    
    visit athletes_url
    
    click_link 'Add New Athlete'
    
    expect(current_path).to eq(new_athlete_path)
		
    fill_in "First name", with: "New First Name"
    fill_in "Last name", with: "Superstar"
    fill_in "Address one", with: "128 Old Suffolk Dr."
    fill_in "Address two", with: "nil"
    fill_in "City", with: "Monroeville"
    fill_in "State", with: "PA"
    fill_in "Zip", with: "15146"
    fill_in "Image file name", with: "athlete.png"

    select (Time.now.year - 1).to_s, :from => "athlete_birthdate_1i"
    
    # If you're taking advantage of the HTML 5 date field in Chrome, 
    # you'll need to use 'fill_in' rather than 'select'
    # fill_in "Released on", with: (Time.now.year - 1).to_s
     
    click_button 'Create Athlete'

    expect(current_path).to eq(athlete_path(Athlete.last))   
    
    expect(page).to have_text('New First Name')
  end
end