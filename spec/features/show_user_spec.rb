require "spec_helper" 

describe "When a user is viewed" do |variable|
	it "shows the users details:" do
		user = User.create!(user_attributes)

		  sign_in(user)

    	visit user_url(user)

    	expect(page).to have_text(user.name)
    	expect(page).to have_text(user.email)

	end
end

