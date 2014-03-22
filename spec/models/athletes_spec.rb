require 'spec_helper'

describe "An athlete " do

it "has many race registrations (raceregs) " do
  athlete = Athlete.new(athlete_attributes)

  racereg1 = athlete.raceregs.new(racereg_attributes)
  racereg2 = athlete.raceregs.new(racereg_attributes)

  expect(athlete.raceregs).to include(racereg1)
  expect(athlete.raceregs).to include(racereg2)
end

it "deletes associated Race Registrations (raceregs)" do
  athlete = Athlete.create(athlete_attributes)

  athlete.raceregs.create(racereg_attributes)

  expect { 
    athlete.destroy
  }.to change(Racereg, :count).by(-1)
end

end