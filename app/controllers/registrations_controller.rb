class RegistrationsController < Devise::RegistrationsController

# layout 'register'

 protected


  def after_sign_up_path_for(resource)

    @profile = current_user.profile || Profile.create(user_id: current_user.id, request: 0)
    remaining_request = @profile.request.to_i + 3 
    @profile.update(request:remaining_request, subscription: DateTime.now)

    UserMailer.with(user: @user).welcome_email.deliver_now
     # redirect_to root_path
      # super(resource)
    myprofile_index_path



      # Tell the UserMailer to send a welcome email after save
        # UserMailer.with(user: @user).welcome_email.deliver_later

        #  flash[:success] = "Thank you for creating new account! We'll get contact you soon!"

        #  reset_session
      # home_membership_path
      # new_user_session_path
  end
end