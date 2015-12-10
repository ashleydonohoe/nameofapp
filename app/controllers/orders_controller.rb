class OrdersController < ApplicationController
	before_filter :authenticate_user!

	def index
		@orders = Order.where(user_id: current_user.id)
	end

	def show
	end

	def new 
	end

	def create
	end
end