class RestroomsController < ApplicationController
	def index
	end

	def new
		@restroom = Restroom.new
	end

	def create 
		@restroom = Restroom.new(restroom_params)
		@restroom.save
		redirect_to @restroom
	end

	def show

	end
	
	private 
		def restroom_params
			params.require(:restroom).permit(:name, :description, :address1, :address2,
											 :city, :state, :zipcode, :phone, :email)
		end		
	
end