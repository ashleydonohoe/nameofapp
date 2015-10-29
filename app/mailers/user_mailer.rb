class UserMailer < ApplicationMailer
	default from: "ashleyrdonohoe@gmail.com"

	def contact_form(email, name, phone, message)
		@message = message
		mail(:from => email,
			:to => 'ashleyrdonohoe@gmail.com',
			:subject => "A new contact form message from #{name}")
	end
end
