class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :is_user_logged_in?
  # GET /users
  # GET /users.json
  def index
    if is_admin_logged_in? or is_super_admin_logged_in?
      @users = User.all
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @posts = Post.paginate(page: params[:page], per_page: 3).order(id: :desc).where(user_id: @user.id) 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.fetch(:user, {})
    end
end
