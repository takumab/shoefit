# Controller class inherits from -> "Devise::..."

class UserRegistrationsController < Devise::RegistrationsController
	before_action :configure_permitted_parameters #important for permitting Devise to record first name in users db.

	# Overwrites create method to "deliver_now" the email "welcome" with newly registered @user
	# as argument if a @user was successfully created.
	def create
		super
		if @user.persisted?
			UserMailer.welcome(@user).deliver_now
		end
	end

	protected

    #below lines important for permitting Devise to record firstname in users database
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up) do |u|
    	u.permit(:first_name, :last_name,
      :email, :password, :password_confirmation)
  	end

    devise_parameter_sanitizer.permit(:account_update) do |u|
        u.permit(:first_name,
        :email, :password, :password_confirmation, :current_password)
    end
  end
end
