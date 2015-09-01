class RacesController < ApplicationController
  before_action :set_race

  def index
    @races = Race.all
  end

  def show

  end

  def create

  end

  private

  def set_race
    @race = Race.find(params[:id])
  end

end
