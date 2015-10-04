class User < ActiveRecord::Base
	
	EMAIL_VALIDATION_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name, presence: true, length: {maximum: 50}
	validates :email, presence: true, length: { maximum: 255 }, 
			  format: { with: EMAIL_VALIDATION_REGEX }, uniqueness: { case_sensitive: false }
	

end
