class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def destroy
  end



  protected 

  def set_user 
    @user = User.find(params[:id])


  def user_params 
    params.require(:user).permit(:email, :password, :password_confirmation )

end
