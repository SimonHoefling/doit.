Rails.application.routes.draw do
  root to: "categories#index"
  devise_for :users

  resources :users, only: [:show]
  resources :tasks do
    post 'start_task', on: :member
  end

  resources :categories, except: [:index]
end
