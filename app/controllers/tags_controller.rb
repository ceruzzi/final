class TagsController < ApplicationController

  def index
    @tags = Tag.all.limit(1000)
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def create
   Tag.create title: params[:title] #will only happen if doesnt exist already
   @tag = Tag.find(params[:title])
  end
end