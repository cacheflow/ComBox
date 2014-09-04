class AssetsController < ApplicationController
  before_action :find_asset :only => [:edit, :show, :update, :destroy]
  def index
    @assets = current_user.assets 
  end

  def show
  end

  def create
    @asset = current_user.assets.create

    if @asset.save 
      redirect_to user_assets_path
    else
      render "new"
    end 
  end

  def edit
  end

  def update
  end

  def destroy
  end

  protected 

  def find_asset
    @asset = current_user.assets.find(params[:id])

end
