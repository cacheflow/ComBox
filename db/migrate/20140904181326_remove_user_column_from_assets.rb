class RemoveUserColumnFromAssets < ActiveRecord::Migration
  def change
    remove_column :assets, :user_id, :string
  end
end
