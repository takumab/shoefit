require 'rails_helper'

describe Order do
	before do
		@orders = Order.create!(user_id: 1, product_id: 43, total: "89" )
	end
	context "Order is added" do
		it "Add product to orders list" do
			expect(@order).to eq(@order) 
		end
	end
end