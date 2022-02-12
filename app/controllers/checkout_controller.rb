class CheckoutController < ApplicationController
  before_action :authenticate_user!
  def index
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
    
      products << {name: 'Subscription for One Month ', amount: 5000, currency: 'usd', quantity: 1}
    
    return products
  end
  #   @session = Stripe::Checkout::Session.create({
  #   mode: 'payment',
   
  #   payment_method_types: ['card'],
  #   line_items: [{
  #     name: 'Mali Match'
  #     amount: 50,
  #     currency: "usd",
  #     quantity: 1
  #     # price_data: {
     
  #     #   currency: 'eur',
  #     #     product_data: {
  #     #       name: 'T-shirt',
  #     #     },
  #     #     unit_amount: 2000,
  #     #   },
  #     #   quantity: 1,
  #     # }],
  #     success_url: root_url,
  #     cancel_url: root_url,
  #   })
  # # end
  #  respond_to do |format|
  #     format.js
end
