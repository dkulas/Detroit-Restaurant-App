class RestaurantsController < ApplicationController

	def index
		@q = Restaurant.ransack(params[:q])
		@restaurants = @q.result(distinct: true)
		# @restaurants = Restaurant.all
	end

	def home_page
		render 'home_page'
	end

	def show
		
	end
end
