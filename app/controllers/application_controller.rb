class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  protect_from_forgery with: :exception
  # protect_from_forgery with: :exception
  # before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :authenticate_user!
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])

  end

end
