class AddUserRefToAssets < ActiveRecord::Migration
  def change
    add_reference :assets, :user_id, index: true
  end
end
