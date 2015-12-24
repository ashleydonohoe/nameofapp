FactoryGirl.define do
	factory :user do
		sequence(:email) {|n| "#{n}@example.com" }
		first_name "First"
		last_name "Last"
		password "password123"
		admin false
	end
end