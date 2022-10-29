class AdminController < ApplicationController
  layout 'admin'
  def index
    @users = User.page(params[:page]).per(7)
  end

  def aboutus
  end
  def home
    
  end
  
end
