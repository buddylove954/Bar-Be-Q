class Api::BarbecuesController < ApplicationController

	def show 
		barbecue = Barbecue.find_by(id: params[:id])
		render json: barbecue
	end

	def join
		barbecue = Barbecue.find_by(id: params[:id])
		user = current_user
		user.barbecues.push(barbecue)
		render json: user.barbecues
	end
end
