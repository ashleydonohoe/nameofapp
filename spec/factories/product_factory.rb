FactoryGirl.define do 
	factory :product do
		name "Some gadget"
		description "This is some gadget for sale."
		image_url "http://pisces.bbystatic.com/image2/BestBuy_US/images/products/7009/7009597_sd.jpg"
		colour "black"
		price 499.99
	end
end