Rails.application.routes.draw do
  get 'admin/dashboard'

  devise_for :users
  root "static_pages#home"
end
