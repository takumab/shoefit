require 'rails_helper'

describe StaticPagesController, :type => :controller do #telling rspec we're testing a controller.
	context "Get #index" do 
		before do 
			get :index #running the HTTP request and get :index. 
		end

		it "responds successfully with an HTTP 200 status code" do #testing to see if page loads successfully and HTTP status equals 200.
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end

		it "renders the index template" do #checking if correct template was loaded.
			expect(response).to render_template("index")
		end

	end
end