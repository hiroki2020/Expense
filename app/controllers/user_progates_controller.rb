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
    @user = UserProgate.new(name: params[:user_name], email: params[:user_email], password: params[:user_password])
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
    @user.password = params[:user_password]
    if @user.save
      redirect_to "/user_progates/#{@user.id}"
      flash[:notice] = "ユーザー情報を編集しました。"
    else
      render("user_progates/edit")
    end
  end

  def login_form
  end

  def login
    @user = UserProgate.find_by(email: params[:email],
                                password: params[:password])
    if @user
      flash[:notice] = "ログインしました"
      session[:user_id] = @user.id
      redirect_to("/index")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render("user_progates/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトが完了しました"
    redirect_to("/login")
  end

  

  
end
