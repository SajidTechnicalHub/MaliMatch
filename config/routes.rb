Rails.application.routes.draw do
 
  # get 'addons/index'
  # get 'addons/checkout'
  get 'addons/update_request'
  post 'addons/premium'
  get 'addons/update_premium'
  get 'addons/policy'
  # get 'myprofile/index'
  get 'profiles/index'
  post 'profiles/search'
  get 'settings/index'
  get 'settings/setting_checkout'
  # get 'dashboard/index'
  # root 'admin/index'
  get 'admin/about'
  get 'admin/aboutus'
  get 'admin/home'
  get 'admin/pricing'
  # get 'registration/index'
  get 'dashboard/addon'
  get 'dashboard/dashboard_checkout'
  
  get 'dashboard/policy'
  devise_for :users, controllers: { registrations: "registrations" }
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
  root 'home#index' 
  get 'home/about'
  get 'home/membership'
  get 'home/login'
  get 'home/register'
  get 'home/profile'
  post 'checkout/create', to:'checkout#create'
  post 'settings/create', to:'settings#create'
  get 'settings/create', to:'settings#create'
  # get 'requests/accept_request/:id', to:'requests#accept_request'
  # get 'requests/reject_request/:id', to:'requests#reject_request'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
