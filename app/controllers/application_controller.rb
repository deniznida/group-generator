class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :is_admin, :current_user

  before_action :require_login
 
  private
    def current_user
      User.find(session[:user_id]) if session[:user_id]
    end

    def is_admin
      if current_user && current_user.admin
        true
      end 
      false
    end

    def require_admin_status
      if !current_user || !current_user.admin
        flash[:alert] = "You are not allowed to see this page!"
        redirect_to root_path
      end
    end

    def require_login
      if !current_user
        flash[:alert] = "Please sign in to continue!"
        redirect_to root_path
      end
    end

    def login_user
      if !@user
        false
      else
        session[:user_id] = @user.id 
        true
      end
    end

    def logout_user
      session[:user_id] = nil
    end
end
