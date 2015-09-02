class RacesController < ApplicationController
  before_action :set_race

  def index
    @races = Race.all
  end

  def show
    @candidates = User.where("role = ?", "candidate")
  end

  def create

  end

  private

  def set_race
    @race = Race.friendly.find_by(id: params[:id])
  end


end
