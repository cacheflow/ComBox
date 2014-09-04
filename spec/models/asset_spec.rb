require 'rails_helper'

describe Asset do 
	it {should validate_presence_of :uploaded_file_name}
	it {should belong_to :user}


	it {should validate_uniqueness_of :uploaded_file_name}
end 
	 