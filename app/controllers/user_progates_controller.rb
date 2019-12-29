class UserProgatesController < ApplicationController
  def index
    @users = UserProgate.all
  end

  def show
    @user = UserProgate.find_by(id: params[:id])
  end

  def new
    @user = UserProgate.new
  end

  def create
    @user = UserProgate.new(name: params[:user_name], email: params[:user_email])
    if @user.save
      redirect_to("/user_progates/#{@user.id}")
      flash[:notice] = "登録が完了しました！"
    else
      render("user_progates/new")
    end
  end

  def edit
    @user = UserProgate.find_by(id: params[:id])
  end

  def update
    @user = UserProgate.find_by(id: params[:id])
    @user.name = params[:user_name]
    @user.email = params[:user_email]
    if @user.save
      redirect_to "/user_progates/#{@user.id}"
      flash[:notice] = "ユーザー情報を編集しました。"
    else
      render("user_progates/edit")
    end
  end
end
