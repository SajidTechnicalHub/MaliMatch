class RequestsController < ApplicationController
  
  before_action :authenticate_user!
  layout 'dashboard'
  # GET /requests or /requests.json
  def index
    @requests = Request.find_by(id: current_user.id)
    
    
  end

  # GET /requests/1 or /requests/1.json
  def show
    @profile = Profile.find_by(id: params[:id])
  end

  # # GET /requests/new
  def new
    @request = Request.new
    
  end

  # # GET /requests/1/edit
  # def edit
  # end

  # POST /requests or /requests.json
  def create
   @profiles = Profile.all
   @profile = current_user.profile
    

    @request = Request.new(request_params)
    

    respond_to do |format|
      if @request.save
        
        remaining_request = @profile.request.to_i - 1 
       @profile.update(request:remaining_request)

        format.html { redirect_to dashboard_index_path, notice: "request created successfully." }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1 or /requests/1.json
  def update
     @request = request.find_by(id: params[:sender_id])
    respond_to do |format|
      if @myrequest.update(request_params)
        format.html { redirect_to request_index_path, notice: "request was successfully updated." }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1 or /requests/1.json
  def destroy
    @request = Request.where(user_id: params[:sender_id])
    @request.destroy!
    respond_to do |format|
      format.html { redirect_to requests_url, notice: "request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
      
    end

    # Only allow a list of trusted parameters through.
    def request_params
      params[:sender_id] = params[:sender_id].to_i
      params[:receiver_id] = params[:receiver_id].to_i
      params.permit(:sender_id, :receiver_id, :requests)
    end
end
 