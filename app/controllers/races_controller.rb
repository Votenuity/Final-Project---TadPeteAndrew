class RacesController < ApplicationController
  before_action :set_race

  def show

    @candidates = User.where(role: "candidate", race_id: params[:id])
    @issues = Issue.all
  end

  private

  def set_race
    @race = Race.find_by_id(params[:id])
  end


end
