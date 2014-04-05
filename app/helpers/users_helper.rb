module UsersHelper

def image_for(user)
  if user.image_file_name.blank?
    image_tag('placeholder.png')
  else
    image_tag(user.image_file_name)
  end
end


def format_age(user)
	if user.birthdate?

	  age = Date.today.year - user.birthdate.year
      age -= 1 if user.birthdate.strftime("%m%d").to_i > Date.today.strftime("%m%d").to_i
      age
    else
    	content_tag(:br, 'No Birthdate Provided')
    end
end


def show_user_roles(user)
	content_tag(:b, 'In the helper loop')
	if user.athlete? 
		content_tag(:b, 'User is an athlete!')
	end 

 	if user.coach? 
		content_tag(:b, 'User is a coach!') 
 	end 
 	
 	if user.admin? 
		content_tag(:b, 'User is an admin!') 
	end 

  
  content_tag(:b, 'In the helper loop')
end


end
