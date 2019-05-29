class ApplicationController < ActionController::Base
	before_action :configure_devise_params, if: :devise_controller?
	protect_from_forgery with: :exception

	def configure_devise_params
		devise_parameter_sanitizer.permit(:sing_up) do |user|
			user.permit(:first_name, :last_name, :country, :city, :biography, :email, :password, :password_confirmation)
		end
	end


	def is_admin_logged_in?
		logged_in = false
		if (user_signed_in? and Admin.where.not(user_id: current_user.id).first.nil?)
			logged_in = true
		end
		if logged_in 
			then true
		else 
			redirect_to root_path 
		end
	end

	def is_user_logged_in?
		logged_in = false
		if (user_signed_in? and Admin.where(user_id: current_user.id).first.nil?)
			logged_in = true
		end
		if logged_in 
			then true
		else 
			redirect_to root_path 
		end
	end
end
