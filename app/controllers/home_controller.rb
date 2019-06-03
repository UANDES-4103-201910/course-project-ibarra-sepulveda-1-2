class HomeController < ApplicationController
	
	def index
		@col6 = true
		if (user_signed_in? and Admin.where(user_id: current_user.id).first.nil? and SuperAdmin.where(user_id: current_user.id).first.nil?)
			@posts = Post.order(id: :desc).where(active: true)
		else
			@posts = Post.order(id: :desc).all
		end

	end

	def new
	end

end
