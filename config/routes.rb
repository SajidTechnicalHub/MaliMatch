Rails.application.routes.draw do
  # get 'myprofile/index'
  get 'profiles/index'
  post 'profiles/search'
  get 'settings/index'
  # get 'dashboard/index'
  root 'admin#index'
  get 'admin/about'
  get 'admin/pricing'
  get 'registration/index'
  get 'dashboard/dash'
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
  get 'home/index'
  post 'checkout/create', to:'checkout#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
