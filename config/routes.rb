Rails.application.routes.draw do
  root 'welcome#index'

  resources :resorts
  resources :snowfalls
end
