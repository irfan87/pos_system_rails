class UsersController < ApplicationController
  # before_action :authorize

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
      session[:user_id] = @user.id
  		redirect_to user_path(session[:user_id])
      flash.now[:success] = 'Thanks for register with us'
  	elsif user_params.nil?
      flash.now[:danger] = "Error!"
  		render :new
    else
      render :new
  	end
  end

  def show
    if current_user.present?
    	@user = User.find(params[:id])
      render :show
    else
      @user = current_user
      redirect_to root_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
      flash.now[:success] = "Update is done"
    else
      render :new
    end
  end

  private

  def user_params
  	params.require(:user).permit(:username, :email_address, :password, :password_confirmation, :ic_number, :gender, :registration_number, :main_shop_name, :main_shop_address, :main_shop_phone_1, :main_shop_phone_2, :fullname)
  end
end
