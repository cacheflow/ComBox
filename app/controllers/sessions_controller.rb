class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.where(email: params[:session][:email]).first

  	if @user && @user.authenticate(params[:session][:password])
  		session_create 
  		redirect_to user_path, notice: "You're logged in."
  	else 
  		flash.now[:notice] = "Invalid login/password"
  end

  def destroy
  	session.delete(:remember_token)
  	redirect_to new_session_path
  end
end
