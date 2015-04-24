class Api::BarbecuesController < ApplicationController

	def show 
		barbecue = Barbecue.find_by(id: params[:id])
		render json: barbecue
	end
end
