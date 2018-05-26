Rails.application.routes.draw do
  get 'tasks/updete'

  get 'tasks/edit'

  get 'tasks/show'

  get 'tasks/create'

  get 'tasks/destroy'

  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  resources :tasks, only: [:create, :destroy, :update, :edit, :show]
end
