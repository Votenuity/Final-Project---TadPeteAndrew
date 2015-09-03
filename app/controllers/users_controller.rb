class UsersController < ApplicationController
  before_action :set_user, only: [:show, :follow, :unfollow]
  def index
    @users = User.all
  end

  def show
    @races = Race.all
  end

  def edit
    @races = Race.all
  end

  def follow
    if current_user == @user
      flash[:notice] = "You cannot follow yourself"
      redirect_to :back
    else
      current_user.follow(@user)
      flash[:notice] = "You are now following #{@user.first_name} #{@user.last_name}"
      redirect_to :back
    end
  end

  def unfollow
    if current_user
      current_user.stop_following(@user)
      flash[:notice] = "You are no longer following #{@user.first_name} #{@user.last_name}"
      redirect_to :back
    end
  end

  private

    def set_user
      @user = User.find(params[:id])
    end
end
