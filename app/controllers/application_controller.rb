class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource

  protected
  def layout_by_resource
    if devise_controller?
      if resource_name == :user && ['edit', 'update'].include?(action_name)
        "users/layouts/application"
      elsif resource_name == :admin && not(['new', 'create'].include?(action_name))
        "admins/layouts/application"
      else
        "layouts/login"
      end
    else
      "layouts/application"
    end
  end

  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
     devise_parameter_sanitizer.permit(:account_update, keys: [:name])
   end

  def after_sign_in_path_for(resource)
    if resource == :admin
      admins_dashboard_index_path
    elsif resource == :user
      users_dashboard_index_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
