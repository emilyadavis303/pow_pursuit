Rails.application.routes.draw do
  root 'welcome#index'

  match "/auth/twitter/callback" => "sessions#create", via: "get"

  resources :resorts
  resources :snowfalls
  resources :users
end
