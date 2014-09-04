class AddUserToAssets < ActiveRecord::Migration
  def change
    add_reference :assets, :user, index: true
  end
end
