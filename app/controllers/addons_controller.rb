class AddonsController < ApplicationController
  layout 'dashboard'
  def index
  end



  def create
    
    @session = Stripe::Checkout::Session.create({
          payment_method_types: ['card'],
          line_items: request_items(),
          mode: 'payment',
          success_url: addons_update_request_url,
          cancel_url: root_url
        })
      end

    respond_to do |format|
      format.js

   
  end

  def request_items 
    products = []
    
      products << {name: '1 Additional Subscription  ', amount: 100, currency: 'usd', quantity: 1}
    
    return products
  end




def update_request
   @profile = current_user.profile
    remaining_request = @profile.request.to_i + 1 
    @profile.update(request:remaining_request)

    redirect_to dashboard_index_path
end

def premium
    @session = Stripe::Checkout::Session.create({
          payment_method_types: ['card'],
          line_items: promoted_items(),
          mode: 'payment',
          success_url: addons_update_premium_url,
          cancel_url: root_url
        })
      end

    respond_to do |format|
      format.js
  
end

 def promoted_items 
      products = []
    
      products << {name: 'Promote your profile  ', amount: 1500, currency: 'usd', quantity: 1}
    
    return products
  end

def update_premium

   @profile = current_user.profile
     
    @profile.update(promoteddate: DateTime.now)
    redirect_to dashboard_index_path
  
end



end
