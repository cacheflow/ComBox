class RemoveColumnFromAssets < ActiveRecord::Migration
  def change
    remove_column :assets, :user_id_id, :integer
  end
end
