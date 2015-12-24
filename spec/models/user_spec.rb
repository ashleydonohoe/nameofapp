require 'rails_helper'

describe User do
	context "email address present" do
		before do
			@user = build(:user, email: "testemail@gmail.com")
		end

		it "should return email address" do
			expect(@user.email).to eq "testemail@gmail.com"
		end
	end
end
