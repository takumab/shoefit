class OrdersController < ApplicationController

	def index
		@products = Product.all
		render "products/index"
	end

	def show
	end

	def new
	end

	def create
	end

	def destroy
	end
	 

end

