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
    # Topic.create title: params[:title],
    #     subforum_id: params[:subforum_id],
    #     content: params[:content]
    #
    # redirect_to topic_url(com.topic_id)

    top=Topic.new
    top.subforum_id = 1
    top.content=params["content"]
    top.title=params["title"]
    top.save
    redirect_to subforum_url(top.subforum_id)
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update title: params[:title],
        subforum_id: params[:subforum_id],
        content: params[:content]

    redirect_to topic_url(@topic.id)
  end

  def destroy
    @topic= Topic.find(params[:id])
    Topic.delete(params[:id])
    redirect_to subforum_url(@topic.subforum_id)
  end


end
