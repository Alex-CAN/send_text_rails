class PostsController < ApplicationController
  def index
    @post = Post.new

  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.save
  end

  private

  def post_params
    params.require(:text).permit(:text, :id)
  end
end
