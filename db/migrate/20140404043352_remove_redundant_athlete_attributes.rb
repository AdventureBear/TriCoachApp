class RemoveRedundantAthleteAttributes < ActiveRecord::Migration
  def up
  	remove_column  :athletes, :address_one
  	remove_column  :athletes, :address_two
  	remove_column  :athletes, :city
  	remove_column  :athletes, :state
  	remove_column  :athletes, :zip
  	remove_column  :athletes, :image_file_name
  	remove_column  :athletes, :first_name
  	remove_column  :athletes, :last_name
  	remove_column  :athletes, :birthdate
  end

  def down
 	add_column  :athletes, :birthdate
  	add_column  :athletes, :last_name
  	add_column  :athletes, :first_name
  	add_column  :athletes, :image_file_name
	add_column  :athletes, :zip
	add_column  :athletes, :state
	add_column  :athletes, :city
	add_column  :athletes, :address_two
  	add_column  :athletes, :address_one
  end

end
