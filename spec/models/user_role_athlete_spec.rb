require 'spec_helper'

describe "A user who is an athlete" do
	it "has many race registrations (raceregs) " do
#	  athlete = Athlete.new(athlete_attributes)
		user = User.new(user_attributes(athlete: True))

		race1 = Race.new(race_attributes(name: "Very Cool Sprint"))
		race2 = Race.new(race_attributes(name: "Super Painful Olympic"))

		racereg1 = race1.raceregs.new(racereg_attributes)
		racereg1.user = user
		racereg1.save!

		racereg2 = race2.raceregs.new(racereg_attributes)
		racereg2.user = user
		racereg2.save!


	  #racereg1 = athlete.raceregs.new(racereg_attributes)
	  #racereg2 = athlete.raceregs.new(racereg_attributes)

	  #expect(athlete.raceregs).to include(racereg1)
	  #expect(athlete.raceregs).to include(racereg2)
		expect(user.raceregs).to include(racereg1)
		expect(user.raceregs).to include(racereg2)
	end

end
