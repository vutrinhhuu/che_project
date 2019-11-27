Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :chairs
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  get 'admin/dashboard'

  get 'chart', to: 'admin#show_chart'

  root "static_pages#home"

  #resources users
  resources :users,  only: [:index, :edit, :update]

  resources :billings, only: [:new, :create, :index, :show, :delete]

  namespace :admin do
    resources :users
    resources :chairs
    resources :categories
    resources :billings, only: [:index, :show]
  end
end
