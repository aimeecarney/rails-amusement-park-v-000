class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    else
      flash[:message] = "Username and password do not match"
      redirect_to '/'
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end

end
