class UserMailer < ApplicationMailer
  default from: 'sajid.mayoo@gmail.com'

  def welcome_email
    @user = params[:user]
    @url  = 'https://salam-match.herokuapp.com/'
    mail(to: @user.email, subject: 'Welcome to salam-match')
    
  end

  def contact_us

     @contact_params = params[:contact]
    
     mail(to: 'sajid.mayoo@gmail.com', subject: 'Contact Us')
    
  end
end
