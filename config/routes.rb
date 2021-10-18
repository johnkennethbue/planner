Rails.application.routes.draw do
  get 'task_today/index'
  get 'priority_task/index'
  devise_for :users 

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :users do
    resources :categories
    resources :tasks
  end
end