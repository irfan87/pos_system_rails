class SessionsController < ApplicationController
  def new
  	user = User.new
  end

  # during login
  def create
  	user = User.find_by_username(params[:username])

  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to root_path
      # flash[:success] = "#{user.username} is logged in"
  	else
      flash.now[:danger] = "Username or password is invalid"
  		# flash.now.alert = "Email or password is not valid"
  		render :new
  	end
  end

  # during logout
  def destroy
  	session[:user_id] = nil
  	redirect_to root_url
    # flash[:success] = 'Logged out'
  end
end
