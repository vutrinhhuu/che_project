Rails.application.routes.draw do
  get 'admin/dashboard'

  devise_for :users
  root "static_pages#home"
 
  #get chairs
  resources :chairs
  
  #resources users
  resources :users,  only: [:index, :edit, :update]
end
