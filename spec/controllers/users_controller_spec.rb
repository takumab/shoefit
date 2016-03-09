require 'rails_helper'

describe UsersController, :type => :controller do
	
	before do 
		#@user = User.create!(email: "takumab@gmail.com", password: "12345678")
		#@user2 = User.create!(email: "kewesi_mac@yahoo.com", password: "23456789")
		@user = FactoryGirl.create(:user)
		@user2 = FactoryGirl.create(:user)
		
	end

	describe "Get #show" do
		context "User is logged in" do 
			before do
				sign_in @user
			end

			it "loads correct user details" do
				get :show, id: @user.id
				expect(response).to have_http_status(200)
				expect(assigns(:user)).to eq @user 
			end	
		end

		context "No user is logged in" do
			it "redirects to login" do 
				get :show, id: @user.id
				expect(response).to redirect_to(new_user_session_path)
			end
		end

		#For Practice and Advanced section of 6.3
		context "Prevent access to another user's page" do
			before do
				sign_in @user
			end

			it "redirects to root_path" do
				get :edit, id: @user2.id
				expect(response).to_not have_http_status(200)
				expect(response).to redirect_to(root_path)
			end #end of "it"
		end 

	end

end