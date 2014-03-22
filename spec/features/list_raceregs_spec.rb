require 'spec_helper'

describe "Viewing a list of race registrations" do
  
  it "shows the raceregs for a specific athlete" do
    athlete1 = Athlete.create(athlete_attributes(first_name: "Iron Man"))
    racereg1 = athlete1.raceregs.create(racereg_attributes(name: "Roger Ebert"))
    racereg2 = athlete1.raceregs.create(racereg_attributes(name: "Gene Siskel"))


    athlete2 = Athlete.create(athlete_attributes(first_name: "Superman"))
    racereg3 = athlete2.raceregs.create(racereg_attributes(name: "Peter Travers"))
    
    visit athlete_raceregs_url(athlete1)
        
    expect(page).to have_text(racereg1.name)
    expect(page).to have_text(racereg2.name)
    expect(page).not_to have_text(racereg3.name)
  end
end