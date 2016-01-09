class PaymentsController < ApplicationController

	def create
		@product = Product.find(params[:product_id])
		if user_signed_in?
			@user = current_user
		end
		token = params[:stripeToken]
		begin
			charge = Stripe::Charge.create(
				:amount => (@product.price * 100).to_i,
				:currency => "usd",
				:source => token,
				:description => params[:stripeEmail]
			)

			if charge.paid
				Order.create(:product_id => @product.id, :user_id => @user, :total => @product.price)
			end
			
		rescue Stripe::CardError => e
			# The card was declined
			body = e.json_body
			err = body[:error]
			flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
		end
	end
end
