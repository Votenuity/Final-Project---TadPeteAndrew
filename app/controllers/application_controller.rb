class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  before_action :set_races

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) << :profile_image
  end

  def set_races
    @races = Race.all
  end

end
