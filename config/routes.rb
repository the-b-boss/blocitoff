Rails.application.routes.draw do
  
  get 'users/update'

  devise_for :users
    resources :users, only: [:update, :show]

  get 'welcome/index'
  get 'welcome/about'
  root to: 'users#show'
end
