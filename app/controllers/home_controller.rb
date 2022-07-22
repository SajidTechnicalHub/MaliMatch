class HomeController < ApplicationController
  layout 'home'
  def index
      
  end
  def about
    
  end
  def membership
      # UserMailer.with(user: @user).welcome_email.deliver_now
        
      # flash[:success] = "Thank you for your order! We'll get contact you soon!"
  end
  def profile
    
  end
  def login
  end

  def register
    
  end
  def contact_us
    
      if params[:contact].present?
       UserMailer.with(contact: params[:contact]).contact_us.deliver_now

         flash[:success] = "Thank you for contact us! We'll get contact you soon!"
       redirect_to home_membership_path
    end
  end

end
