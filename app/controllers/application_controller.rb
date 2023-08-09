class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters               ## accepted key
    devise_parameter_sanitizer.permit(:sign_up, keys:[:username, :phone_number, :full_name])
  end

  ## strong parameter gets paramteres from web considiering if the data is safe
  ## avoids un necessary data (un safe data)
end
