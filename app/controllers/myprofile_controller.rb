class MyprofileController < ApplicationController
  before_action :authenticate_user!
  layout 'dashboard'
  # GET /profiles or /profiles.json
  def index
    @profiles = Profile.all
    @profile =current_user.profile || Profile.create(user_id: current_user.id)
    
  end

  # GET /profiles/1 or /profiles/1.json
  def show
    @myprofile = Profile.find_by(id: params[:id])
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
    
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles or /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
   

    respond_to do |format|
      if @profile.save
        format.html { redirect_to myprofile_index_path, notice: "profile was successfully Updated." }
        format.json { render :show, status: :created, location: @myprofile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1 or /profiles/1.json
  def update
     @myprofile = Profile.find_by(id: params[:id])
    respond_to do |format|
      if @myprofile.update(profile_params)
        format.html { redirect_to myprofile_index_path, notice: "profile was successfully updated." }
        format.json { render :show, status: :ok, location: @myprofile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1 or /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: "profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = profile.find(params[:id])
      
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.fetch(:profile, {}).permit(:fname, :surname, :date, :country, :region, :status, :children, :ethnic, :ethnicity, :nationality, :weight, :build, :facial, :height, :revent, :practice, :pattern, :summary, :educatiion, :sect, :scholar, :dressing, :islamic, :hobby, :revert, :devorcees, :widows, :parents, :user_id)
    end
end
 