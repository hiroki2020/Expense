class PostsController < ApplicationController
  before_action :authenticate_user
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new

  end

  def create
    @post = Post.new(
      content: params[:content],
      amount: params[:amount],
      user_progate_id: @current_user.id
    )
    @post.save
    redirect_to("/posts/index")
    flash[:complete] = '記録しました。'
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    redirect_to("/posts/index")
  end

  def destroy
    post = Post.all.order("created_at DESC").find(params[:id])
    post.destroy
    redirect_to("/posts/index")
    flash[:notice] = "削除が完了しました。"
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

end
