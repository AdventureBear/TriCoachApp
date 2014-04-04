class AthletesController < ApplicationController
	before_action :require_signin, except: [:index, :show]
	before_action :require_admin, except: [:index, :show]


	def index
#		@athletes=Athlete.all()
#		@athletes=Athlete.under_thirty
#		@athletes=Athlete.order('last_name')
		@athletes=User.where(athlete: true).order('last_name')
	end

	def show
		#@athlete=Athlete.find(params[:id])
		@athletes=User.where(athlete: true).find(params[:id])
	end

	def edit
		@athlete=Athlete.find(params[:id])
	end


	def update
		@athlete=Athlete.find(params[:id])
	  	if @athlete.update(athlete_params)
	  		flash[:notice]
	  		redirect_to @athlete, notice: "Athlete succesfully updated!" 
	  	else
	  		render :edit
	  	end

	end

	def new
		@athlete = Athlete.new
	end

	def create
	  	@athlete = Athlete.new(athlete_params)	
		if @athlete.save
			flash[:notice]
	  		redirect_to @athlete, notice: "Athlete succesfully created!" 
		else
			render :new
		end
	end


	def destroy
		@athlete = Athlete.find (params[:id])
		@athlete.destroy
		redirect_to athletes_url, alert: "Athlete successfully deleted!"

	end



private

	def athlete_params
		athlete_params = params.require(:athlete).
	  			permit(:first_name, :last_name, :birthdate, :address_one, :address_two, :city, :state, :zip, :image_file_name)
	end




end

