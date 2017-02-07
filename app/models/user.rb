class User < ApplicationRecord
	has_secure_password

	validates_presence_of :username
	validates_confirmation_of :password, on: :create
	validates_presence_of :password_confirmation, allow_blank: true, on: :update

	validates_length_of :password, minimum: 3

	validates_uniqueness_of :username
end
