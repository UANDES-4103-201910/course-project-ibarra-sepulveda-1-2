class HomeController < ApplicationController
	
	def index
		@col6 = true
		if (user_signed_in? and Admin.where(user_id: current_user.id).first.nil? and SuperAdmin.where(user_id: current_user.id).first.nil?)
			@posts = Post.paginate(page: params[:page], per_page: 4).order(created_at: :desc).where(active: true)
		elsif (user_signed_in? and SuperAdmin.where(user_id: current_user.id).first.nil? == false)
			@posts = Post.paginate(page: params[:page], per_page: 4).order(created_at: :desc).all
		elsif (user_signed_in?)
			@posts = Post.paginate(page: params[:page], per_page: 4).order(created_at: :desc).where(user_id: User.where(address: User.where(id: current_user.id).first.address))
		end

	end

	def new
	end

end
