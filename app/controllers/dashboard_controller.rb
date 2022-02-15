class DashboardController < ApplicationController
  before_action :authenticate_user!
  layout 'dashboard'
  def index
  end

  def create
    # render 'dashboard/index'
  end
end
