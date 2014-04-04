class UpdateRaceAttributesFromRaceregs < ActiveRecord::Migration

class Racereg < ActiveRecord::Base
end

class Race < ActiveRecord::Base
end


  def change
  	Racereg.reset_column_information
  	Race.reset_column_information
  	
  	#loop through all race registrations
	Racereg.all.each do |racereg|
  	
  	#if race name not in races table yet, create a new one
  	racename = racereg.name
  	race = Race.find_or_create_by(name: racename)

  	#udpate race attributes (name, date) from racereg table
  	race.name = racereg.name
  	race.race_date = racereg.date

  	#update racereg with join race_id from race table
  	racereg.race_id = race.id

  	#save race, racereg
  	race.save!
  	racereg.save!

  	end


  end
end
