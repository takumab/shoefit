class PaymentsController < ApplicationController
	before_action :redirect_if_not_logged_in

	def create
		@product = Product.find(params[:product_id])
		@user = current_user
		token = params[:stripeToken]
		# Create the charge  on Stripe's servers - this will charge the user's card
		begin

				charge = Stripe::Charge.create(
					:amount => @product.price, # threw an error because I spelled amount wrong. Problem solved! 
					:currency => "usd",
					:source => token,
					:description => params[:stripeEmail]
				)
				if charge.paid && signed_in?
					Order.create(
						:product_id => @product.id,
						:user_id => @user.id, # Payment only works if current user is signed in.
						:total => @product.price

						)
				end
			rescue Stripe::CardError => e
				# The card has been declined
				body = e.json_body
				err = body[:error]
				flash[:error] = "Unfortunately, there was an error processing your payment #{error[:message]}"

			redirect_to product_path(@product)
		end

	end

	private
		def redirect_if_not_logged_in
			redirect_to(new_user_registration_path) unless current_user
		end
end
