class ApplicationController < ActionController::Base
	before_action :configure_devise_params, if: :devise_controller?
	add_flash_types :danger, :info, :warning, :success

	def is_super_admin_logged_in?
		logged_in = false
		if (user_signed_in? and SuperAdmin.where(user_id: current_user.id).first.nil? == false)
			logged_in = true
		end
		if logged_in 
			then true
		else 
			redirect_to root_path 
		end
	end

	def is_admin_logged_in?
		logged_in = false
		if (user_signed_in? and (Admin.where(user_id: current_user.id).first.nil? == false or SuperAdmin.where(user_id: current_user.id).first.nil? == false))
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
		if (user_signed_in?)
			logged_in = true
		end
		if logged_in 
			then true
		else 
			redirect_to root_path 
		end
	end

	protected

	def is_admin
		if (Admin.where(user_id: current_user.id).first.nil? == false or SuperAdmin.where(user_id: current_user.id).first.nil? == false)
			return true
		else
			return false
		end
	end

	def configure_devise_params
		add = [:first_name, :last_name, :picture,:country, :city, :biography, :email, :password, :password_confirmation]
		devise_parameter_sanitizer.permit :sign_up, keys: add
    	devise_parameter_sanitizer.permit :account_update, keys: add
	end
end
