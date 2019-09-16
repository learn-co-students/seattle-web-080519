class ApplicationController < ActionController::Base
  #before_action :require_login
  before_action :authorized

  def current_user
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    else
    end
  end
  
  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

  def require_login
    return head(:forbidden) unless session.include? :username
  end
end
