FactoryGirl.define do
	sequence(:product_id) { |n| "#{n}" }
	factory :order do
		product_id "3"
		user_id "1"
		total "25.99"
	end
end