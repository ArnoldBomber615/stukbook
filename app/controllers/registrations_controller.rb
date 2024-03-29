class RegistrationsController < Devise::RegistrationsController

	def sign_up_params
		params.require(:user).permit(:email, :password, :password_confirmation, :username)
	end

	def account_update_params
		params.require(:user).permit(:email, :password, :password_confirmation, :username, :current_password)
	end
end
