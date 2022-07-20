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
    # redirect_to root_path
  end

end
