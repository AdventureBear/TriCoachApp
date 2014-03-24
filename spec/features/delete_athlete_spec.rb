require 'spec_helper'


describe "Deleting a " do 
  it "destroys the athlete and shows the athlete listing without the deleted athlete" do
    athlete = Athlete.create(athlete_attributes)

    visit athlete_path(athlete)
    
    click_link 'Delete'
    
    expect(current_path).to eq(athletes_path)
    expect(page).not_to have_text(athlete.first_name)
  end
end