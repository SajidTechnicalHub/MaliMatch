class RegistrationsController < Devise::RegistrationsController

# layout 'register'

 protected


  def after_sign_up_path_for(resource)

      # Tell the UserMailer to send a welcome email after save
        # UserMailer.with(user: @user).welcome_email.deliver_later

        UserMailer.with(user: @user).welcome_email.deliver_now
         flash[:success] = "Thank you for creating new account! We'll get contact you soon!"

         reset_session
      # home_membership_path
      new_user_session_path
  end
end