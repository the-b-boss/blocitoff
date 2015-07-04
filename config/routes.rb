Rails.application.routes.draw do
  
  get 'items/create'

  get 'users/update'

  devise_for :users
    resources :users, only: [:update, :show]
      resources :items, only: [:create, :destroy]

  get 'welcome/index'
  get 'welcome/about'
  root to: 'users#show'
end
