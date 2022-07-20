class CheckoutController < ApplicationController
  # before_action :authenticate_user!
  def index
    @profiles = Profile.all
    @profile = current_user.profile

    @profile =current_user.profile || Profile.create(user_id: current_user.id, request: 0)
    
    remaining_request = @profile.request.to_i + 3
    @profile.update(request:remaining_request)
  end

  def show
  end

  def create
    
    @session = Stripe::Checkout::Session.create({
          payment_method_types: ['card'],
          line_items: product_items(),
          mode: 'payment',
          success_url: checkout_index_url,
          cancel_url: root_url
        })
      end

    respond_to do |format|
      format.js

   
  end

  def product_items 
    products = []
    
      products << {name: 'Subscription for One Month ', amount: 3000, currency: 'usd', quantity: 1}
    
    return products
  end



end
