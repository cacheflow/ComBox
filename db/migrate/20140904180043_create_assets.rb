class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :user_id
      t.string :uploaded_file_name
      t.string :uploaded_file_content_type
      t.integer :uploaded_file_size

      t.timestamps
    end
  end
end
