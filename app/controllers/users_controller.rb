class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params) 
    if @user.save 
      session_create 
      redirect_to users_path
    else 
      render "new"
    end 
  end

  def index
    @users = User.all 
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def destroy 
    @user.destroy 
    redirect_to new_user_path
  end

  protected 

  def set_user 
    @user = User.find(params[:id])
  end 


  def user_params 
    params.require(:user).permit(:email, :password, :password_confirmation)
  end 

end 

