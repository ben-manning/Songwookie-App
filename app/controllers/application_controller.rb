class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end

 #  private
 #  	def current_user
 #  		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	# end

	# 	def user_signed_in?
	# 		current_user.present?
	# 	end
		
	# 	helper_method :current_user, user_signed_in?
end