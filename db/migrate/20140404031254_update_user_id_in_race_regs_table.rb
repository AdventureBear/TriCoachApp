class UpdateUserIdInRaceRegsTable < ActiveRecord::Migration

class User < ActiveRecord::Base 	
end

class Athlete < ActiveRecord::Base 
end

class Racereg < ActiveRecord::Base
end


  def change
	User.reset_column_information
	Athlete.reset_column_information
	Racereg.reset_column_information

	Racereg.all.each do |racereg|
		unless racereg.user_id
			#find athlete who corresponds to racereg
			#update racereg.user_id
			#save racereg
			athlete_id = racereg.athlete_id

			athlete = Athlete.find_by(id: athlete_id)

			racereg.user_id = athlete.user_id

			racereg.save!
		end
	end


  end
end
