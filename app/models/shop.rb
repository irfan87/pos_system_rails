class Shop < ApplicationRecord
	belongs_to :user

	validates_presence_of :shop_name
	validates_presence_of :shop_phone_number_2, allow_blank: true
	validates_presence_of :shop_phone_number_1, messages: "Phone number is required"
	validates_presence_of :shop_address
end
