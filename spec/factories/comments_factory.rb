FactoryGirl.define do
	factory :comment do
		user
		body "This is a comment"
	end
end