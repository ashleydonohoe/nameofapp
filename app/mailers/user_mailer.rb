class UserMailer < ApplicationMailer
	default from: "ashleyrdonohoe@gmail.com"

	def contact_form(email, name, phone, message)
		@message = message
		mail(:from => email,
			:to => 'ashleyrdonohoe@gmail.com',
			:subject => "A new contact form message from #{name} at #{phone}")
	end

	def welcome_email(user)
		@user = user
		@url = 'http://gadget-mart.herokuapp.com/'
		mail(to: @user.email, subject: 'Welcome to Gadget Mart!')
	end

end
