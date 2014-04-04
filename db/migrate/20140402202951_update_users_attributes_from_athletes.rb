class UpdateUsersAttributesFromAthletes < ActiveRecord::Migration
  

  class Users < ActiveRecord::Base
  	
  end

  class Athletes < ActiveRecord::Base
  
  end

  def change
  	User.reset_column_information

  	Athlete.all.each do |athlete|
  		if athlete.user_id == nil
  			# Create fullname from athlete table
  			fullname = athlete.first_name + " " +  athlete.last_name

  			#find user or create new one if doesn't exist
  			user = User.find_or_create_by(name: fullname)

  			# satisfy validation criterea
  			user.email = 'testathlete' + athlete.id.to_s + '@gmail.com'
 			user.password = 'abracadabra'
  			user.password_confirmation='abracadabra'

  			#save user to get new user ID for field mapping
   			user.save!

   			#saver user ID to athlete ID to create attributes table
   			athlete.user_id=user.id
    		athlete.save!
  			
  			
  		end
  	end

  end

end
