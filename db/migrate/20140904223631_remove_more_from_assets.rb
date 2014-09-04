class RemoveMoreFromAssets < ActiveRecord::Migration
  def change
    remove_column :assets, :more, :string
  end
end
