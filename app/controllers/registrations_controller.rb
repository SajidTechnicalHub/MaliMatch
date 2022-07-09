class RegistrationsController < Devise::RegistrationsController

# layout 'register'

 protected


  def after_sign_up_path_for(resource)

      # Tell the UserMailer to send a welcome email after save
        # UserMailer.with(user: @user).welcome_email.deliver_later

        UserMailer.with(user: @user).welcome_email.deliver_now
        

      price_index_path
  end
end