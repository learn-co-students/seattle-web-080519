class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    session[:username] = params[:username]
    redirect_to '/'
  end

  # def create
  #   @user = User.find_by(username: params[:username])
  #   return head(:forbidden) unless @user.authenticate(params[:password])
  #   session[:user_id] = @user.id
  # end

  def destroy
    session.delete :username
    redirect_to '/'
  end
end

