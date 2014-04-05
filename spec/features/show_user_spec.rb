require "spec_helper" 

describe "When a user is viewed" do |variable|
	it "shows the users details:" do
		user = User.create!(user_attributes)

		sign_in(user)

    	visit user_url(user)

    	expect(page).to have_text(user.name)
    	expect(page).to have_text(user.email)

    	#brought over from show athlete spec

		#expect(page).to have_text (user.first_name)
		#expect(page).to have_text (user.last_name)
		expect(page).to have_text (user.birthdate)
		expect(page).to have_text (user.address_one)
		expect(page).to have_text (user.address_two)
		expect(page).to have_text (user.city)
		expect(page).to have_text (user.state)
		expect(page).to have_text (user.zip)				
		expect(page).to have_selector("img[src$='#{user.image_file_name}']")
	end


	it "shows their roles (admin/coach/athlete)" 
end

