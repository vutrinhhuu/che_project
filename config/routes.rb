Rails.application.routes.draw do
  devise_for :users
  resources :chairs
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  get 'admin/dashboard'

  root "static_pages#home"

  namespace :admin do
    resources :users
  end
end
