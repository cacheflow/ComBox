require "bcrypt"

class User < ActiveRecord::Base
	has_many :assets 
	has_secure_password 
	before_save {self.email = email.downcase}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: true 
	validates :password_confirmation, presence: true
	
end
