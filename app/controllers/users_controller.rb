class UsersController < ApplicationController
  before_action :authorize, only: [:create]
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
  	@user = User.find(params[:id])
  end

  private

  def user_params
  	params.require(:user).permit(:username, :email_address, :password, :password_confirmation)
  end
end
