class RestroomsController < ApplicationController
	before_action :authenticate_user!, only: [:create, :new]
	def index
	end

	def new
		@restroom = Restroom.new
		#@restroom.save
	end

	def create 
		@restroom = Restroom.new(restroom_params)
		if	@restroom.save
		#redirect_to "/restrooms/show"
		#@restroom = Restroom.find{params[:id]}
			redirect_to @restroom
		else
			flash[:danger] = @restroom.errors.full_messages.to_sentence
			render 'new'
		end
	end

	def show
		@restroom = Restroom.find{params[:id]}
	end
	
	private 
		def restroom_params
			params.require(:restroom).permit(:name, :description, :address1, :address2, :building_id,
											 :city, :state, :zipcode, :phone, :email)
		end		
end