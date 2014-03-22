require 'spec_helper'

describe "Creating a new racereg" do 
  it "saves the racereg" do    
    athlete = Athlete.create(athlete_attributes)

    visit athlete_url(athlete)
    
    click_link 'Add a Race'
    
    expect(current_path).to eq(new_athlete_racereg_path(athlete))
    
    fill_in "Name", with: "Roger Ebert"
    select "A", :from => "racereg_priority"  
    fill_in "Comment", with: "I laughed, I cried, I spilled my popcorn!"
            
    click_button 'Create Racereg'
  
    expect(current_path).to eq(athlete_raceregs_path(athlete))
    
    expect(page).to have_text("Racereg succesfully created!")
  end
  
  it "does not save the racereg if it's invalid" do
    athlete = Athlete.create(athlete_attributes)
    
    visit new_athlete_racereg_url(athlete)
    
    expect { 
      click_button 'Create Racereg' 
    }.not_to change(Racereg, :count)
        
    expect(page).to have_text('error')
  end
end