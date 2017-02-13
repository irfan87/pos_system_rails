class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  private

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def authorize
  	redirect_to login_path notice: 'Username and password is required to access this site'
  end
end
