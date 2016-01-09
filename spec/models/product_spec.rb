require 'rails_helper'

describe Product do
	context "create a product with a user and several ratings" do
		before do
			@product = create(:product)
			firstcomment = create(:comment, product: @product, rating: 1 )
			secondcomment = create(:comment, product: @product, rating: 3 )
			thirdcomment = create(:comment, product: @product, rating: 5 )

		end

		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq 3
		end
	end

	# Validation tests
	context "when product has no name" do
      before do
        @product = build(:product, name: "")
      end

      it 'is not valid' do
        expect(@product).not_to be_valid
      end
    end

    context "when comment has no body" do
    	before do 
    		@product = create(:product)
			@user = build(:user)
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