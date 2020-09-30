class SessionsController < ApplicationController

  def new
    # code
  end

  def create
    user = User.find_by(email: params[:email])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user), notice: successful_login
    else
      flash[:error] = bad_credentials
      render :new
    end
  end

  private

  def bad_credentials
    "Bad credentials, Please re-enter your email and password"
  end

  def successful_login
    'User was successfully logged in'
  end
end
