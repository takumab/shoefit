require 'rails_helper'
#A demostration of overwritting factories. Since we're using Devise validation is already well tested.
describe User, :type => :model do
	it "should not validate users without an email address" do
		#build will generate the user only in the memory and not save it to the db.
		#enables you to test validations individually after "building" a user. 
		@user = FactoryGirl.build(:user, email: "not this email baby!") 
		expect(@user).to_not be_valid
	end	
end