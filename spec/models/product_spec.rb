require 'rails_helper'

describe Product do
	context "when the products has comments" do
		before do
			@product = Product.create!(name: "Air Max 95")
			@user = FactoryGirl.create(:user)
			@product.comments.create!(rating: 1, user: @user, body: "Awful shoes!")
			@product.comments.create!(rating: 3, user: @user, body: "Ok shoes!")
			@product.comments.create!(rating: 5, user: @user, body: "Great shoes!")
		end	

		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq 3
		end

		it "is not valid" do 
			expect(Product.new(description: "Nice shoes!")).not_to be_valid
		end

	end

	
end