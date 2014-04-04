class RaceregsController < ApplicationController
	before_action  :set_athlete

	def index
		@raceregs = @athlete.raceregs
	end

	def new
		@racereg = @athlete.raceregs.new
	end

	def show
	end

	def create
		@racereg = @athlete.raceregs.new (racereg_params)
		if @racereg.save
			flash[:notice]
	  		redirect_to athlete_raceregs_path(@athlete), 
	  		notice: "Racereg succesfully created!" 
		else
			render :new
		end
	end

	def destroy
		@racereg = @athlete.raceregs.find(params[:id])
		@racereg.destroy
		redirect_to athlete_raceregs_path(@athlete), alert: "Racereg successfully deleted!"
	end	


private
	def racereg_params
		params.require(:racereg).permit(:name, :date, :priority, :comment)
	end

private
	def set_athlete
		@athlete=Athlete.find(params[:athlete_id])
	end


end
