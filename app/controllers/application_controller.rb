class ApplicationController < ActionController::Base

    # all code below is to save the 'name' field in the register_form in the User model 
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        end
end
