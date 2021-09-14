class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new

  end

  def create
    @post = Post.new(
      name: params[:name],
      title: params[:title],
      content: params[:content])
    @post.save
    redirect_to("/posts/index")
  end
end