require 'rails_helper'

describe Order do
	before do
		@orders = FactoryGirl.create!(:order)
	end
	context "Order is added" do
		it "Add product to orders list" do
			expect(@order).to eq(@order) 
		end
	end
end