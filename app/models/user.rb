class User < ActiveRecord::Base
	
	EMAIL_VALIDATION_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	before_save { self.email = email.downcase }
	validates :name, presence: true, length: {maximum: 50}
	validates :email, presence: true, length: { maximum: 255 }, 
			  format: { with: EMAIL_VALIDATION_REGEX }, uniqueness: { case_sensitive: false }
	validates :password, length: { minimum: 6 }
	has_secure_password
	

end
