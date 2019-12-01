class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new(content: params[:content],amount: params[:amount])
    @post.save
    redirect_to("/posts/index")
    flash[:complete] = '記録しました。'
  end

end
