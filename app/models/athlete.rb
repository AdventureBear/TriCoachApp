class Athlete < ActiveRecord::Base

	has_many :raceregs, :dependent=> :destroy

	validates :first_name, :last_name,  presence: true

	validates :image_file_name, allow_blank: true, format: {
  with:    /\w+.(gif|jpg|png)\z/i,
  message: "must reference a GIF, JPG, or PNG image"
}

	def self.under_thirty
		where("birthdate >= ?", 30.years.ago).order("last_name desc")
	end


	def age
  		age = Date.today.year - birthdate.year
  		age -= 1 if birthdate.strftime("%m%d").to_i > Date.today.strftime("%m%d").to_i
  		age
	end



	def previous_races
		raceregs.where( "date <?", Time.now).order("date asc")
	end

	def upcoming_races
		raceregs.where( "date >=?", Time.now).order("date asc")
	end

	def next_race
		upcoming_races.first
#		next_race = raceregs.order('date asc').first
	end

end
