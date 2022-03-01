


class ProfilesController < ApplicationController
  before_action :authenticate_user!
  layout 'dashboard'
  def index
    @profiles = Profile.joins(:user).where.not(user_id: current_user.id).where("users.gender = #{!current_user.gender}")
    @profile = current_user.profile
     

    # checking promoted subscription
    if @profile.set_promoted_date != nil
      if (@profile.set_promoted_date > 0 && @profile.set_promoted_date <= 14)
        

        if @profiles.select{|profile| profile.set_promoted_date != nil}
        @profiles.find{|profile| profile.set_promoted_date != nil}
        end
        
      end
    end
    # @profiles = Profile.where.not(user_id: current_user.id)

    # searching
    if params[:ethnicity].present? || params[:country].present? || params[:ageFrom].present? || params[:ageTo].present?
      if params[:ethnicity].present?
        @profiles = @profiles.where('lower(ethnicity) = ?', params[:ethnicity].downcase)
      end
      if params[:country].present?
        @profiles = @profiles.where('lower(country) = ?', params[:country].downcase)
      end
      age_from = params[:ageFrom].to_i
      age_to = params[:ageTo].to_i
       if age_from.present? && age_to.present? && age_from <= age_to
        @profiles = @profiles.where('age >= ? AND age <= ?', age_from, age_to )
      end
    else 

      # @profiles = Profile.where.not(user_id: current_user.id)
      # @profiles = Profile.joins(:user).where(user_id: current_user.id).where("users.gender = #{!current_user.gender}")

    
    end
  end
  # def search
  #   render :index
  # end


  def show
    
    @profile = Profile.find_by(id: params[:id])
    @current_user_profile = current_user.profile
    
  end
end
