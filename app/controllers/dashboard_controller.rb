class DashboardController < ApplicationController
  before_action :authenticate_user!
  layout 'dashboard'
  def index
    @profiles = Profile.all
    @profile = current_user.profile
    @profile =current_user.profile || Profile.create(user_id: current_user.id, request: 0)
    @requests = Request.all
    @profiles = Profile.all
    # @profile = current_user.profile
    

  end
  def show
     @profile = Profile.find_by(id: params[:id])
    @current_user_profile = current_user.profile
  end

  def dashboard_checkout
    @profiles = Profile.all
    @profile = current_user.profile
    remaining_request = @profile.request.to_i + 3 
    @profile.update(request:remaining_request)
    
  end

  def create
    # render 'dashboard/index'
  end

  def addon
    @profiles = Profile.all
    @profile = current_user.profile
  end

  def destroy
    profile_id = params[:profile_id].to_i
    @requests = Request.all
    @requests.each do |r|
      if current_user.id == r.receiver_id

        if r.profile_id == profile_id
         r.destroy

       end

      end
    end
    redirect_to dashboard_index_path 
      
  end

end


