class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def create
   Tag.create title: params[:title]

    redirect_to root_path
  end
end