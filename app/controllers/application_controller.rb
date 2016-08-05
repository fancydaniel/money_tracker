class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Not sure if I should apply this without setting up Heroku email sender
  # before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameters_sanitizer.for(:sign_up) << :name
  end
end
