class User < ActiveRecord::Base
	
	EMAIL_VALIDATION_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name, presence: true, length: {maximum: 50}
	validates :email, presence: true, length: {maximum: 255}
	validates :email, format: { with: EMAIL_VALIDATION_REGEX }
end
