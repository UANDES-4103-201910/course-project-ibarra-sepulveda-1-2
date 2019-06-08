class SearchController < ApplicationController

  	def create
  		word = "%#{params[:keyword]}%"
      @col6 = true
  		@user = User.where("first_name LIKE ? OR last_name LIKE ? OR email LIKE ?", word, word, word)
  		
  		if (user_signed_in? and Admin.where(user_id: current_user.id).first.nil? and SuperAdmin.where(user_id: current_user.id).first.nil?)
  			@posts = Post.order(created_at: :desc).where(user_id: @user).where(active: true)
  		else
  			@posts = Post.order(created_at: :desc).where(user_id: @user)
  		end
  	
  		respond_to do |format|
  			format.html { redirect_to root_path }
  			format.json { render json: @posts }
  			format.js
  		end
  	end
end
