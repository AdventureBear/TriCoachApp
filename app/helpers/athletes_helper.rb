module AthletesHelper

def image_for(athlete)
  if athlete.image_file_name.blank?
    image_tag('placeholder.png')
  else
    image_tag(athlete.image_file_name)
  end
end

 def format_next_race(athlete)
   if athlete.next_race.count>0
     athlete.next_race.name
   else
    content_tag(:p, "No Races Scheduled")
   end
 end

#def format_previous_races(athlete)
#	if athlete.previous_races.any?
#	 	athlete.previous_races.each do |r|  
#			r.name
#		end
#	else
#		content_tag(:p, "No Prior Races")
#	end
#end

def delete_racereg_image
   image_tag('png/33.png', style: 'border: 0', :title => 'Delete Racereg')
 end

def edit_racereg_image
   image_tag('png/69.png', style: 'border: 0', :title => 'Edit Racereg')
end



end
