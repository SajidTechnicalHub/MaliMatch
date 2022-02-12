class HomeController < ApplicationController
  def index
      if current_user.present?
       render 'dashboard/index'
     end
  end
end
