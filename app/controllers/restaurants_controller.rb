class RestaurantsController < ApplicationController
	# before_action :authenticate_user!

	def index
		@restaurants = Restaurant.all
	end

	def home_page
		render 'home_page'
	end

	def show
		
	end
end
