class PostsController < ApplicationController
  
  def index
    @post = Post.new
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @posts = Post.all
    @post = Post.new(post_params)
    @post.save
    if @post.save
      respond_to do |f|
        f.html {redirect_to root}
        f.js
      end
    else
      redirect_to root
    end
  end

  private

  def post_params
    params.require(:post).permit(:text, :id)
  end
end
