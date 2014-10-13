class HomeController < ApplicationController

	def getJson
		@agenda = Agenda.find(1)
		
		render :json => @agenda
	end

	def updateAJAX
		@agenda = Agenda.find(params[:id])

		@agenda.update_attributes(:sunday => params[:sunday], :opening_prayer => params[:opening_prayer], :closing_prayer => params[:closing_prayer], :song => params[:song], :directing => params[:directing])

		@agenda.save!


		render nothing:true
	end

end
