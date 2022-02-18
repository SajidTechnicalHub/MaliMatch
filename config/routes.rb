Rails.application.routes.draw do
 
  # get 'addons/index'
  # get 'addons/checkout'
  get 'addons/update_request'
  post 'addons/premium'
  get 'addons/update_premium'
  # get 'myprofile/index'
  get 'profiles/index'
  post 'profiles/search'
  get 'settings/index'
  get 'settings/setting_checkout'
  # get 'dashboard/index'
  root 'admin#index'
  get 'admin/about'
  get 'admin/pricing'
  get 'registration/index'
  get 'dashboard/addon'
  get 'dashboard/dashboard_checkout'
  
  get 'dashboard/profiles'
  devise_for :users
  # get 'checkout/index'
  # get 'checkout/show'
  # get 'about/index1'
  # resources :registration
  resources :checkout
  resources :about
  resources :price
  resources :dashboard
  resources :myprofile
  resources :profiles
  resources :requests
  resources :addons
  get 'home/index'
  post 'checkout/create', to:'checkout#create'
  post 'settings/create', to:'settings#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
