class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @title = "#{@user.first_name}'s Profile" 
  end
  
  def new
    @user = User.new
    @title = "Sign up"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Sign up successful!"
    else
      @title = "Sign up"
      render "new"
    end
  end
end
