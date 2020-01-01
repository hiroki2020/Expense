class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user

  def set_current_user 
    @current_user = UserProgate.find_by(id: session[:user_progate_id]) 
  end

  def authenticate_user
    if @current_user == nil
      flash[:notice] = "ログインまたは新規登録をしてください"
      redirect_to("/login")
    end
  end

  def forbit_login_user
    if @current_user
      flash[:notice] = "すでにログインしています"
      redirect_to("/index")
    end
  end

end
