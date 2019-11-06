Rails.application.routes.draw do
  get 'admin/dashboard'

  devise_for :users
  root "static_pages#home"
 
  #get chairs
  resources :chairs
  
  namespace :admin do
    resources :users
  end
end
