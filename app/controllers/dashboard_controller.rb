class DashboardController < ApplicationController
  before_action :authenticate_user!
  layout 'dashboard'
  def index
    @requests = Request.all
    @profiles = Profile.all
    @profile = current_user.profile
   
    

  end

  def create
    # render 'dashboard/index'
  end

  def addon
    @profiles = Profile.all
    @profile = current_user.profile
  end
end
