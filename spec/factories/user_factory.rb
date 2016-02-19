#Lets Rails know that I am using FactoryGirl to define factories.
FactoryGirl.define do 
	sequence(:email) { |n| "user#{n}@example.com" }
	factory :user do
		email 
		password "12345678"
		first_name "James"
		last_name "Harden"
		admin false
	end

	factory :admin, class: User do
		email
		password "123456789"
		admin true
		first_name "Admn"
		last_name "User" 
	end
end