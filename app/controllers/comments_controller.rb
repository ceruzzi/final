class CommentsController < ApplicationController


  def create
    com=Comment.new
    com.topic_id = params["topic_id"]
    com.user=params["user"]
    com.post_number=params["id"].to_i
    com.content=params["content"]
    com.save
    redirect_to topic_url(com.topic_id)
  end
end