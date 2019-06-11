class SearchController < ApplicationController
  before_action :is_user_logged_in?

  	def post
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

    def admin
      word = "%#{params[:keyword]}%"
      @user = User.where("email LIKE ?", word)
      @admins = Admin.where(user_id: @user)

      respond_to do |format|
        format.html { redirect_to admins_path }
        format.json { render json: @admins }
        format.js
      end
    end

    def blacklist
      word = "%#{params[:keyword]}%"
      @user = User.where("email LIKE ?", word)
      @blacklists = Blacklist.where(user_id: @user)

      respond_to do |format|
        format.html { redirect_to blacklists_path }
        format.json { render json: @blacklists }
        format.js
      end
    end

    def dumpster
      word = "%#{params[:keyword]}%"
      @user = User.where("email LIKE ?", word)
      @post = Post.where("title LIKE ?", word)
      @dumpsters = Dumpster.where(user_id: @user)
      
      respond_to do |format|
        format.html { redirect_to dumpsters_path }
        format.json { render json: @dumpsters }
        format.js
      end
    end

    def report
      word = "%#{params[:keyword]}%"
      @user = User.where("email LIKE ?", word)
      @reports = Report.where(user_id: @user)
      if @report.nil?
        @post = Post.where(user_id: @user)
        @reports = Report.where(post_id: @post)
      end
      
      respond_to do |format|
        format.html { redirect_to reports_path }
        format.json { render json: @reports }
        format.js
      end
    end
end
