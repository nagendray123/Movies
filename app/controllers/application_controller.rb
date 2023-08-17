class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: "Access Denied."
  end

   before_action :configure_permitted_parameters, if: :devise_controller?

   protected

   def configure_permitted_parameters   
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :phone, :address])
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :age, :phone, :address, :email, :password, :password_confirmation, :current_password) }
   end	
end
