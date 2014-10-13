class HomeController < ApplicationController

	def getJson
		@agenda = Agenda.find(1)
		
		render :json => @agenda
	end

	def update
		puts params[:opening_prayer]

		render nothing:true

		#@agenda = Agenda.find(params[:id])

		#@agenda.sunday = params[:sunday]
		#@agenda.opening_prayer = params[:opening_prayer]
		#@agenda.save!
	end

end
