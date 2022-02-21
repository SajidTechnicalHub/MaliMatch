class AdminController < ApplicationController
  layout 'admin'
  def index
    redirect_to admin_home_path
  end

  def aboutus
  end
  def home
    
  end
end
