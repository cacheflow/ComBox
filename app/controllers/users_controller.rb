class UsersController < ApplicationController
  before_action :find_user :only => [:update, :show, :edit :destroy]
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
  end

  def edit
  end

  def destroy 
    @user.destroy 
    redirect_to new_user_path
  end

  protected 

  def find_user
    #/ This acts as a helper method that is called before each show, edit, update, and destroy method.
    @user = User.find(params[:id])
  end

  def user_params 
    params.require(:user).permit(:email, :password, :password_confirmation)
  end 

end 

