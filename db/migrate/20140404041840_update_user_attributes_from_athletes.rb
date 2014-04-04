class UpdateUserAttributesFromAthletes < ActiveRecord::Migration
  class User < ActiveRecord::Base
  	
  end

  class Athlete < ActiveRecord::Base
  
  end

  def change
  	User.reset_column_information
	Athlete.reset_column_information
  	

  	Athlete.all.each do |athlete|
  		

  			# Create fullname from athlete table
  			firstname = athlete.first_name 
  			lastname = athlete.last_name


  			#find user by athlete ID
  			user = User.find_by(id: athlete.user_id)

  			# update a bunch of stuff
  			user.address_one 		=  athlete.address_one
 			user.address_two		=  athlete.address_two
 			user.city				=  athlete.city
 			user.state				=	athlete.state
 			user.zip 				=  athlete.zip
 			user.image_file_name	=   athlete.image_file_name
 			user.first_name			=  athlete.first_name
 			user.last_name			= athlete.last_name
 			user.birthdate			= athlete.birthdate

  			#save user to get new user ID for field mapping
   			user.save!
  		end

  end
end
