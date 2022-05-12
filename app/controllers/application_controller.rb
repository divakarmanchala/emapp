class ApplicationController < ActionController::Base
  before_action :configure_pemitted_parameters, if: :devise_controller?
  def after_sign_in_path_for(resource)
    dashboard_path
  end

  protected 

  def configure_pemitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :employee_id, :role_id, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :employee_id, :role_id, :email, :password, :current_password)}
  end
end
