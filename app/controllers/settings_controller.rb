class SettingsController < ApplicationController
  # before_action :authenticate_user!
  layout 'dashboard'
  def index
    @profiles = Profile.all
    @requests = Request.all
    @profile = current_user.profile
  end

def setting_checkout
    @profile = current_user.profile
     remaining_request = @profile.request.to_i + 3 
     @profile.update(request:remaining_request, subscription: DateTime.now)

     flash[:alert] = "You Resubscribe Successfully"

     redirect_to settings_index_path
end

  def create
    
    @session = Stripe::Checkout::Session.create({
          payment_method_types: ['card'],
          line_items: product_items(),
          mode: 'payment',
          success_url: settings_setting_checkout_url,
          cancel_url: root_url
        })
      end

    respond_to do |format|
      format.js

   
  end

  def product_items 
    products = []
    
      products << {name: 'Renew Subscription for One Month ', amount: 5000, currency: 'usd', quantity: 1}
    
    return products
  end




end
