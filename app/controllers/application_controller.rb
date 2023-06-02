class ApplicationController < ActionController::Base

	 protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?

     def after_sign_in_path_for(resource)
          UserMailer.with(user: @user).welcome_email.deliver_now
          root_path
       #    flash[:success] = "Thank you for creating new account! We'll get contact you soon!"
       # if current_user.email? == 'admin@gmail.com' || current_user.email? == 'abdiaziz.warsame9@gmail.com' || current_user.email? == 'malismatch@gmail.com'
       #    root_path 
       # else
       #    reset_session
       #    about_login_alert_path
       # end
            
     end

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :phone, :gender, :email, :wname, :wmobile, :wemail, :wquestion, :password)}

               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :phone, :gender, :email, :wname, :wmobile, :wemail, :wquestion, :password, :current_password)}
           end

      
end
