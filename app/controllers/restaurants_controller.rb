class RestaurantsController < ApplicationController

	def index
		@q = Restaurant.ransack(params[:q])
		@restaurants = @q.result(distinct: true)
		# @restaurants = Restaurant.all
		respond_to do |format|
			format.html
			format.json { render json: @restaurants }
		end
	end

	def home_page
		render 'home_page'
	end

	def show
		
	end
end
