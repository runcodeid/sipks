class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    before_action :authenticate_user!

    include Pundit
    protect_from_forgery

    attr_writer :login

    $city_param_url=nil 

    def login
        @login || self.username || self.email
    end

    # rescue_from Pundit::NotAuthorizedError do |exception|
    #     render_error_page(status: 403, render: 'public/403')
    # end    

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    private

    def user_not_authorized
        # flash[:alert] = "You are not authorized to perform this action."
        # redirect_to(request.referrer || root_path)
        render file: "#{Rails.root}/public/403.html", layout: false, status: 403
    end

    protected

    def configure_permitted_parameters
        added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end
end
