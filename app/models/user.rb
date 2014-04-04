class User < ActiveRecord::Base
  has_secure_password

  has_many :raceregs, :dependent=> :destroy
  has_many :registered_races, through: :raceregs, source: :race

  	validates :name,  presence: true
  	validates :email, presence: true,                   
                  format: /\A\S+@\S+\z/, 
                  uniqueness: { case_sensitive: false }
  	validates :password, length: {minimum: 8, allow_blank: true }

    validates :image_file_name, allow_blank: true, format: {
      with:    /\w+.(gif|jpg|png)\z/i,
      message: "must reference a GIF, JPG, or PNG image"
    }


  def self.authenticate (email, password)
  		user = User.find_by(email: email)
		user && user.authenticate(password)
	end

  #def age
  #  if birthdate?
  #    age = Date.today.year - birthdate.year
  #    age -= 1 if birthdate.strftime("%m%d").to_i > Date.today.strftime("%m%d").to_i
  #    age
  #  else
  #        content_tag(:p, "No Birthdate Provided")
  #  end
  #end

  # methods from athlete class moved over to users
    def previous_races
        registered_races.where( "race_date <?", Time.now).order("race_date asc")
    end

    def upcoming_races
      registered_races.where( "race_date >=?", Time.now).order("race_date asc")
    end

    def next_race
      upcoming_races.first
  #   next_race = raceregs.order('date asc').first
  end

end
