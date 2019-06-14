class SearchController < ApplicationController
  before_action :is_user_logged_in?

  	def post
  		word = "%#{params[:keyword]}%"
      @col6 = true
      if (Admin.where(user_id: current_user.id).first.nil?)
        @user = User.where("first_name LIKE ? OR last_name LIKE ? OR email LIKE ?", word, word, word)
      else
  		  @user = User.where("(first_name LIKE ? OR last_name LIKE ? OR email LIKE ?) AND address = ?", word, word, word, current_user.address)
  		end

  		if (user_signed_in? and Admin.where(user_id: current_user.id).first.nil? and SuperAdmin.where(user_id: current_user.id).first.nil?)
  			@posts = Post.paginate(page: params[:page], per_page: 4).order(created_at: :desc).where(user_id: @user).where(active: true)
  		else
  			@posts = Post.paginate(page: params[:page], per_page: 4).order(created_at: :desc).where(user_id: @user)
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
      @admins = Admin.paginate(page: params[:page], per_page: 8).where(user_id: @user)

      respond_to do |format|
        format.html { redirect_to admins_path }
        format.json { render json: @admins }
        format.js
      end
    end

    def blacklist
      word = "%#{params[:keyword]}%"
      if (SuperAdmin.where(user_id: current_user.id).first.nil? == false)
        @user = User.where("email LIKE ?", word)  
      else
        @admin_adrress = User.where(address: User.where(id: current_user.id).first.address).first.address
        @user = User.where("email LIKE ? AND address = ? ", word, @admin_adrress)
      end
      @blacklists = Blacklist.paginate(page: params[:page], per_page: 6).order(created_at: :desc).where(user_id: @user)

      respond_to do |format|
        format.html { redirect_to blacklists_path }
        format.json { render json: @blacklists }
        format.js
      end
    end

    def dumpster
      word = "%#{params[:keyword]}%"
      if (SuperAdmin.where(user_id: current_user.id).first.nil? == false)
        @user = User.where("email LIKE ?", word)   
      else
        @admin_adrress = User.where(address: User.where(id: current_user.id).first.address).first.address
        @user = User.where("email LIKE ? AND address = ?", word, @admin_adrress)
      end
      @dumpsters = Dumpster.where(post_id: Post.where(user_id: @user)).select(:post_id)
      @col6 = true
      @posts = Post.paginate(page: params[:page], per_page: 4).order(created_at: :desc).where(id: @dumpsters)
      
      respond_to do |format|
        format.html { redirect_to dumpsters_path }
        format.json { render json: @posts }
        format.js
      end
    end

    def report
      word = "%#{params[:keyword]}%"
      if (SuperAdmin.where(user_id: current_user.id).first.nil? == false)
        @user = User.where("email LIKE ?", word)
        @post = Post.where(user_id: @user)
        if @post.first.nil?
          @reports = Report.paginate(page: params[:page], per_page: 8).where(post_id: Post.where("title LIKE ?", word))
        else
          @reports = Report.paginate(page: params[:page], per_page: 8).where(post_id: @post)
        end
      else
        @admin_adrress = User.where(address: User.where(id: current_user.id).first.address).first.address
        @user = User.where("email LIKE ? AND address = ?", word, @admin_adrress)

        if @user.nil? == false
          @post = Post.paginate(page: params[:page], per_page: 8).where(user_id: @user)
          @reports = Report.paginate(page: params[:page], per_page: 8).where(post_id: @post)

        else
          @reports = Report.paginate(page: params[:page], per_page: 8).where(post_id: Post.where("title LIKE ?", word))

        end
      end
      
      respond_to do |format|
        format.html { redirect_to reports_path }
        format.json { render json: @reports }
        format.js
      end
    end
end
