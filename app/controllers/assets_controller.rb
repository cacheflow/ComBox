class AssetsController < ApplicationController
  before_action :find_asset, :only => [:edit, :show, :update, :destroy]
  def index
    @assets = current_user.assets 
  end

  def show
  end

  def new 
    @asset = current_user.assets.new 
  end 

  def create
    @asset = current_user.assets.create(asset_params)

    if @asset.save
      redirect_to @asset_path
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

  def asset_params 
    params.require(:asset).permit(:uploaded_file, :user_id, :created_at)
  end 

end 
