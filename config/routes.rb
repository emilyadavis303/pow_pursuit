Rails.application.routes.draw do
  root 'welcome#index'

  match "/auth/twitter/callback" => "sessions#create", via: "get"
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :resorts,   only: [:index, :show]
  resources :snowfalls, only: [:index]
  resources :users
  resources :tweets,    only: [:new, :create]
end
