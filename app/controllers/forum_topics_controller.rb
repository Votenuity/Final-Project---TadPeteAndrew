class ForumTopicsController < ApplicationController
before_action :set_forum_topic, only: [:show, :edit]

  def index
    @forum_topics = ForumTopic.all
  end

  def show
  end

  def create
    @forum_topic = ForumTopic.new(forum_topic_params)
    @forum_topic.user_id = current_user.id

    respond_to do |format|
      if @forum_topic.save
        format.html { redirect_to :back, notice: 'Your topic named ' + @forumtopic.title + ' ' + 'was created!' }
        format.json { render :show, status: :created, location: @forum_topic }
      else
        format.html { render :new }
        format.json { render json: @forum_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  private

  def forum_topic_params
    params.require(:forum_topic).permit(:title)
  end

  def set_forum_topic
    @forum_topic = ForumTopic.find_by_id(params[:id])
  end
end
