class SessionsController < ApplicationController
	def new
	end

	def create
		#complete this method
		user = User.where(email: params[:session][:email], password: params[:session][:password]).first
		if user.nil? == false
			session[:current_user_id] = params[:authenticity_token]
			cookies["authentification"] = params[:authenticity_token]
			flash[:notice] = "You are successfully log in"
			redirect_to home_path
		else
			flash[:notice] = "Your email or password are incorrect"
			redirect_to root_url
		end
	end

	def destroy
		#complete this method
		@_current_user_id = nil
		cookies["authentification"] = nil
		redirect_to root_path
	end
end
