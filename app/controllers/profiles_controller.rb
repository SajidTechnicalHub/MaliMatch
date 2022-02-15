# class ProfilesController < ApplicationController
#   before_action :authenticate_user!
#   layout 'dashboard'
#   def index
#     if params[:ethnicity].present?
#       @profiles = Profile.where(ethnicity: params[:ethnicity]).where.not(user_id: current_user.id)
#     end
#   end
#   def search
#     @profiles = Profile.where.not(user_id: current_user.id)
#     if params[:ethnicity].present?
#       @profiles = Profile.where(ethnicity: params[:ethnicity]).where.not(user_id: current_user.id)
#     end
#   end
# end



class ProfilesController < ApplicationController
  before_action :authenticate_user!
  layout 'dashboard'
  def index
    @profiles = Profile.where.not(user_id: current_user.id)
    if params[:ethnicity].present?
      @profiles = @profiles.where('lower(ethnicity) = ?', params[:ethnicity].downcase)
    end
    if params[:nationality].present?
      @profiles = @profiles.where('lower(nationality) = ?', params[:nationality].downcase)
    end
  end
  # def search
  #   render :index
  # end


  def show
    @profile = Profile.find_by(id: params[:id])
  end
end
