Rails.application.routes.draw do
  get 'admin/dashboard'

  devise_for :users
  root "static_pages#home"
  
  # get list chairs
  get "/chair", to:"chair#list_chair"
  
  #get chairs
  resources :chairs
end
