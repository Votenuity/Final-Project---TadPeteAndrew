class RacesController < ApplicationController
  before_action :set_race

  def show

    @candidates = User.where(role: "candidate", race_id: params[:id])
    @issues = Issue.all
  end

  def follow
      current_user.follow(@race)
      flash[:notice] = "You are now following #{@race.title}"
      redirect_to :back
  end

  def unfollow
      current_user.stop_following(@race)
      flash[:notice] = "You are no longer following #{@race.title}"
      redirect_to :back
  end

  private

  def set_race
    @race = Race.find_by_id(params[:id])
  end


end
