Rails.application.routes.draw do
  root to: "categories#index"
  devise_for :users

  resources :users, only: [:show]
  resources :tasks
  resources :categories, except: [:index]
end
