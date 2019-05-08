class RegistrationsController < ApplicationController
	def new
	
	end

	def create
		#complete this method
		@user=User.create(email: params[:registrations][:email], password: params[:registrations][:password], biography: params[:registrations][:biography], country: params[:registrations][:country], city: params[:registrations][:city])
		if @user.save
			flash[:notice] = "your registration is complete"
			redirect_to root_path
		else
			flash[:notice] = "Your registration has failed, try again"
			redirect_to sign_in_path
		end
	end
end
