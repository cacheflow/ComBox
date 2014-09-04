class AddMoreToAssets < ActiveRecord::Migration
  def change
    add_column :assets, :more, :string
  end
end
