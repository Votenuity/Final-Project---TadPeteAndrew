class ForumsController < ApplicationController
before_action :set_forum, only: [:show]
respond_to :html, :json, :js

  def show
  end

  def create
    @forum = Forum.new(forum_params)
    respond_with @forum
  end

  private

  def forum_params
    params.require(:forum).permit(:race_id)
  end

  def set_forum
    @forum = Forum.find_by_race_id(params[:race_id])
  end

end
