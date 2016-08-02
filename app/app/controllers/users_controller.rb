class UsersController < ApplicationController
	def index

	end
	def show

	end
	def new
		@user = User.new
	end
	def edit

	end
	def create
		@user = User.new(user_params)
		if @user.save
			Usermailer.async.welcome_email(@user)
			redirect_to root_path	
				
		else
			flash.now.alert = "Invalid email or password"
			render "new"
		end
	end
	def update

	end
	def destroy

	end

	private
		
		def user_params
			params.require(:user).permit(:email, :password, :password_confirmation)
		end

end
