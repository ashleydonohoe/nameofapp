class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
  	@products = Product.limit(3)
  end

  def thank_you
  	@name = params[:name]
  	@email = params[:email]
  	@phone = params[:phone]
  	@message = params[:message]
  	UserMailer.contact_form(@email, @name, @phone, @message).deliver_now
  end
end
