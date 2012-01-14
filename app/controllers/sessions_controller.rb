class SessionsController < ApplicationController
  def new
    @title = "Log in"
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      sign_in user
      flash[:notice] = "Logged in!"
      redirect_to user_path(user)
    else
      @title = "Log in"
      flash.now[:alert] = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
