Rails.application.routes.draw do
  root to: "pages#home" # landing page (root_path)
  devise_for :users

  resources :users, only: [:show]
  resources :tasks do
    member do
      post 'start_task'
      patch 'accept_request'
      patch 'reject_request'
      patch 'done_task'
      post 'create_chatroom'
    end
    collection do
      get 'my_tasks' # Route for "my_tasks"
      get 'task_history', to: 'tasks#task_history' # Route for "task_history"
    end
  end

  resources :categories
  resources :chatrooms, only: [:index, :show, :new, :create] do
    resources :messages, only: :create
  end
end
