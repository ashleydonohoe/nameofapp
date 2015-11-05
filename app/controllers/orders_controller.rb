class OrdersController < ApplicationController
	before_filter :authenticate_user!
	load_and_authorize_resource

	def index
	end

	def show
	end

	def new 
	end

	def create
	end

end