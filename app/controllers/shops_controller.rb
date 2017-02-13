class ShopsController < ApplicationController
	def index
		@user = current_user
		@shops = @user.shops.all
	end

	def new
		@user = current_user
		@shop = @user.shops.new
	end

	def create
		@user = current_user
		@shop = @user.shops.create(shop_params)

		if @shop.save
			flash.now[:success] = "Done Add The New Shop"
  		redirect_to user_path(session[:user_id])
		else
			render :new
		end
	end

	def edit
		@user = current_user
		@shop = @user.shops.find(params[:id])
	end

	def update
		@user = current_user
		@shop = @user.shops.find(params[:id])

		if @shop.update(shop_params)
			flash.now[:success] = "Done Update The New Shop"
			redirect_to user_path(session[:user_id])
		else
			render :edit
		end
	end

	def destroy
		@user = current_user
		@shop = @user.shops.find(params[:id])

		@shop.destroy

		redirect_to user_path(session[:user_id])
	end

	private

	def shop_params
		params.require(:shop).permit(:user_id, :shop_name, :registration_number, :shop_phone_number_1, :shop_phone_number_2, :shop_address)
	end
end
