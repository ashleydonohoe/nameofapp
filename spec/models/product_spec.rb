require 'rails_helper'

describe Product do
	context "create a product with a user and several ratings" do
		before do
			@product = Product.create!(name: "Apple iPad", description: "This is a tablet from Apple.", image_url: "http://pisces.bbystatic.com/image2/BestBuy_US/images/products/7009/7009597_sd.jpg", colour: "black", price: 499.99)
			@user = User.create!(email: "testingaddress@gmail.com", password: "notreallysecurepassword")
			@product.comments.create!(rating: 1, user: @user, body: "Horrible tablet!" )
			@product.comments.create!(rating: 3, user: @user, body: "Meh, it's OK")
			@product.comments.create!(rating: 5, user: @user, body: "Amazing tablet!")
		end

		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq 3
		end
	end

	# Validation tests
	context "when product has no name" do
      before do
        @product = Product.create(description: "This is a tablet from Apple.")
      end

      it 'is not valid' do
        expect(@product).not_to be_valid
      end
    end

    context "when comment has no body" do
    	before do 
    		@product = Product.create!(name: "Apple iPad", description: "This is a tablet from Apple.", image_url: "http://pisces.bbystatic.com/image2/BestBuy_US/images/products/7009/7009597_sd.jpg", colour: "black", price: 499.99)
			@user = User.create!(email: "testingaddress@gmail.com", password: "notreallysecurepassword")
			@product.comments.create(rating: 5, user: @user, body: "Amazing tablet!")
			@product.comments.create(rating: 3, user: @user)		
		end

		it "is valid" do
			expect(@product.comments.first).to be_valid
		end
		
		it 'is not valid' do
        expect(@product.comments.last).not_to be_valid
      end
    end

end