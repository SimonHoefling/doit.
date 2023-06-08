Rails.application.routes.draw do
  root to: "pages#home" # landing page (root_path)
  devise_for :users

  resources :users, only: [:show]
  resources :tasks do
    member do
      post 'start_task'
      patch 'accept_request'
      patch 'reject_recuest'
      patch 'done_task'
    end
  end

  resources :categories, except: [:index]
end
