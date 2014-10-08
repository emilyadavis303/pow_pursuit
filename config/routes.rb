require 'resque/server'

Rails.application.routes.draw do
  mount Resque::Server.new, at: "/resque"

  root 'welcome#index'

  resources :resorts
  resources :snowfalls
end
