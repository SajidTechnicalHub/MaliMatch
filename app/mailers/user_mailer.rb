class UserMailer < ApplicationMailer
  default from: 'sajid.mayoo@gmail.com'

  def welcome_email
    @user = params[:user]
    @url  = 'https://mymalimatch.herokuapp.com/'
    # mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    mail(to: @user.email, subject: 'Welcome to mymalimatch')
    # mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    
  end
end
