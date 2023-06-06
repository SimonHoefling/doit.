Rails.application.routes.draw do
  root to: "categories#index"
  devise_for :users

  resources :users, only: [:show]
  resources :tasks do
    member do
      post 'start_task'
      patch 'accept_request'
      patch 'decline_request'
      patch 'done_task'
    end
  end

  resources :categories, except: [:index]
end
