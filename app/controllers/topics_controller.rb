class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    #@comments=Comment.where(:post_number=>params["id"])
  end

  def new
  end

  def create
    Topic.create title: params[:title],
        subforum: params[:subforum],
        content: params[:content]

    redirect_to root_path
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update title: params[:title],
        subforum: params[:subforum],
        content: params[:content]

    redirect_to topic_url(@topic.id)
  end

  def destroy
    Topic.delete(params[:id])
    redirect_to root_path
  end


end
