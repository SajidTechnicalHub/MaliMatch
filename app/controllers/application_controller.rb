class ApplicationController < ActionController::Base

	 protected

      def configure_permitted_parameters
           devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :phone, :email, :password)}

           devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :phone, :email, :password, :current_password)}
      end


      def after_sign_in_path_for(resource)
       if params[:registration_process]
          dashboard_index_path  # desired page
       else
         super
       end
      end
end
