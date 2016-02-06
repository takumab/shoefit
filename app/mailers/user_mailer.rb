class UserMailer < ApplicationMailer
	default from: "takumab@gmail.com"

	def contact_form(email, name, message)
	@message = message 
		mail(:from => email,
			:to => "takumab@gmail.com",
			:subject => "A new contact form message from #{name}")

	end

	def welcome(user)
		@appname = "Shoe Fit"
		mail( :to => user.email,
					:subject => "Welcome to #{@appname}!")
	end
end
