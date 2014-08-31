class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def authenticate_admin!
    redirect_to root_path and return if user_signed_in? && !current_user.is_admin?
    authenticate_user!
  end
end
