Rails.application.routes.draw do
  # get 'registration/index'
  devise_for :users
  # get 'checkout/index'
  # get 'checkout/show'
  # get 'about/index'
  resources :registration
  resources :checkout
  resources :about
  resources :price
  root 'home#index'
  post 'checkout/create', to:'checkout#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
