class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :follow, :unfollow]
  respond_to :html, :json, :js

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def update
    @user.update(user_params)
    respond_with @user
  end

  def follow
    current_user.follow(@user)
    flash[:notice] = "You are now following #{@user.full_name}"
    redirect_to :back
  end

  def unfollow
    current_user.stop_following(@user)
    flash[:notice] = "You are no longer following #{@user.full_name}"
    redirect_to :back
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :party, :profile_image, :avatar, :bio)
  end

end
