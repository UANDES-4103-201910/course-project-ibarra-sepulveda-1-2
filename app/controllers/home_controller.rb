class HomeController < ApplicationController
	
	def index
		if (user_signed_in? and Admin.where(user_id: current_user.id).first.nil? and SuperAdmin.where(user_id: current_user.id).first.nil?)
			@posts = Post.where(active: true)
		else
			@posts = Post.all
		end

	end

	def new
	end

end
