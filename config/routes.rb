Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :chairs
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  get 'admin/dashboard'

  root "static_pages#home"
  
  #resources users
  resources :users,  only: [:index, :edit, :update]

  namespace :admin do
    resources :users
<<<<<<< HEAD
    resources :chairs
    resources :categories
    resources :billings, only: [:index, :show]
=======

    resources :billings, only: [:index, :show]
    resources :chairs
    resources :categories
>>>>>>> modified route
  end
end
