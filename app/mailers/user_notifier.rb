class UserNotifier < ApplicationMailer
	default from: 'ashleyrdonohoe@gmail.com'

	def send_signup_email(user)
		@user = user
		mail( :to => @user.email, :subject => "Thanks for signing up!").deliver_now
	end
end
