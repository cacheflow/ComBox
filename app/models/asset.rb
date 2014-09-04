class Asset < ActiveRecord::Base
	attr_accessor :user_id, :uploaded_file 

	belongs_to :user 
	validates :uploaded_file, presence: true 
	validates :uploaded_file_name, presence: true 
end
