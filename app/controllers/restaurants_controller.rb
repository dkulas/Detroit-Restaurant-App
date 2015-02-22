class RestaurantsController < ApplicationController
	before_action :authenticate_user!

	def index
		@restaurants = Restaurant.all
	end

	def show
		
	end
end
