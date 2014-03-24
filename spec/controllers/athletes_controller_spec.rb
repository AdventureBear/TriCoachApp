require 'spec_helper'

describe AthletesController do

  before do
    @athlete = Athlete.create!(athlete_attributes)
  end

  context "when not signed in as an admin user" do

    before do
      non_admin = User.create!(user_attributes(admin: false))
      session[:user_id] = non_admin.id
    end

    it "cannot access new" do
      get :new

      expect(response).to redirect_to(root_url)
    end

    it "cannot access create" do
      post :create

      expect(response).to redirect_to(root_url)
    end

    it "cannot access edit" do
      get :edit, id: @athlete

      expect(response).to redirect_to(root_url)
    end

    it "cannot access update" do
      patch :update, id: @athlete

      expect(response).to redirect_to(root_url)
    end

    it "cannot access destroy" do
      delete :destroy, id: @athlete

      expect(response).to redirect_to(root_url)
    end

  end

end