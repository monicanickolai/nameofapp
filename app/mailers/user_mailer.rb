class UserMailer < ApplicationMailer
	default from: "The Daejeon Arts Collective"

	def contact_form(email, name, message)
		@message = message
		mail(:from => email,
			:to => 'your-email@example.com',
			:subject => "A new contact form message from #{name}")
	end

	def welcome(user)
		@appname = "Daejeon Arts Collective"
		mail( :to => user.email,
			:subject => "Welcome to #{@appname}!")
	end
end
