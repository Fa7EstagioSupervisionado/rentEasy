class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
	  flash[:error] = "Access denied."
	  redirect_to root_url
	end

	before_filter :include_parameters_devise, if: :devise_controller?

protected
	def include_parameters_devise
		devise_parameter_sanitizer.for(:sign_up) << :role
	end
end
