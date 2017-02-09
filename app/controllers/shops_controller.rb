class ShopsController < ApplicationController
	def index
		@user = User.find(params[:user_id])
		@shop = @user.shops.all
	end


end
