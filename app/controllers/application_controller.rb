class ApplicationController < ActionController::Base
	before_action :configure_devise_params, if: :devise_controller?

	def configure_devise_params
		devise_parameter_sanitizer.permit(:sing_up) do |user|
			user.permit(:first_name, :last_name, :name, :country, :city, :biography, :email, :password, :password_confirmation)
		end
	end
end
