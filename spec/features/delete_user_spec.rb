require 'spec_helper'

describe "Deleting a user" do 
it "destroys the user and redirects to the home page" do
    user = User.create!(user_attributes)

    visit user_path(user)

    click_link 'Delete Account'

    expect(current_path).to eq(root_path)
    expect(page).to have_text('Account successfully deleted!')

    visit users_path

    expect(page).not_to have_text(user.name)
  end
end