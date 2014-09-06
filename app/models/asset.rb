class Asset < ActiveRecord::Base
	attr_accessor :user_id, :uploaded_file_file_name 

	belongs_to :user 

	has_attached_file :uploaded_file, :styles => {
		:original => "1920x1680>",
		:small => "100x100#>", 
		:medium => "250x250>",
		:large => "600x600>"
	}

	validates_attachment_content_type :uploaded_file, :content_type => /.*/

end
