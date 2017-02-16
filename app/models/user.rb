class User < ApplicationRecord
	has_secure_password

	VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

	validates_presence_of :username, uniqueness: true
	validates_presence_of :email_address
	validates_uniqueness_of :email_address
	validates_format_of :email_address, with: VALID_EMAIL_REGEX
	validates_confirmation_of :password, on: :create
	validates_presence_of :password, on: :create, allow_blank: true, length: {minimum: 3}
	validates_presence_of :password_confirmation, allow_blank: true, on: :update

	# validates_length_of :password, minimum: 3

	validates_uniqueness_of :username

	has_many :shops
end
