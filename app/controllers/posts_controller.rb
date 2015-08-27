class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new
    post.title = params[:post][:title]
    post.body = params[:post][:body]
    if post.save
      flash[:notice] = "Your post was created!"
    else
      flash[:alert] = "Sorry, this post was not created."
    end
    redirect_to post_path(post.id)
  end

  def destroy
    post = Post.find(params[:id])
    if post.destroy
      flash[:notice] = "The post was deleted."
    else
      flash[:alert] = "This post cannot be deleted."
    end
    redirect_to posts_path
  end

end