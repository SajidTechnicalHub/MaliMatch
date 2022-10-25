class AdminController < ApplicationController
  layout 'admin'
  def index
    @users = User.all
  end

  def aboutus
  end
  def home
    
  end
end
