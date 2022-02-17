


class ProfilesController < ApplicationController
  before_action :authenticate_user!
  layout 'dashboard'
  def index
    @profiles = Profile.all
    @profile = current_user.profile
   
    
    @profiles = Profile.where.not(user_id: current_user.id)
    if params[:ethnicity].present? || params[:nationality].present? || params[:ageFrom].present? || params[:ageTo].present?
      if params[:ethnicity].present?
        @profiles = @profiles.where('lower(ethnicity) = ?', params[:ethnicity].downcase)
      end
      if params[:nationality].present?
        @profiles = @profiles.where('lower(nationality) = ?', params[:nationality].downcase)
      end
      age_from = params[:ageFrom].to_i
      age_to = params[:ageTo].to_i
       if age_from.present? && age_to.present? && age_from <= age_to
        @profiles = @profiles.where('age >= ? AND age <= ?', age_from, age_to )
      end
    else 

      @profiles = Profile.all
    
    end
  end
  # def search
  #   render :index
  # end


  def show
    @profile = Profile.find_by(id: params[:id])
  end
end
