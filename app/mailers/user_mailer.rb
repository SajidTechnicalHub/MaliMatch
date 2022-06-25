class UserMailer < ApplicationMailer
  default from: 'sajid.mayoo@gmail.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com'
    # mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    mail(to: 'sajid.mayoo@gmail.com', subject: 'Welcome to My Awesome Site')
    
  end
end
