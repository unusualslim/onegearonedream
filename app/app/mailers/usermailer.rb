class Usermailer < ApplicationMailer
	include Backburner::Performable
	default from: 'notifications@onegearonedream.com'

	def welcome_email(user)
		@user = user
		@url = 'http://onegearonedream.com/login'
		mail(to: @user.email, subject: 'Welcome to My Awesome Site')
	end

end
