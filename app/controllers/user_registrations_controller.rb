# Controller class inherits from -> "Devise::..."
class UserRegistrationsController < Devise::RegistrationsController
	# Overwrites create method to "deliver_now" the email "welcome" with newly registered @user
	# as argument if a @user was successfully created.
	def create
		super
		if @user.persisted?
			UserMailer.welcome(@user).deliver_now 
		end
	end
end