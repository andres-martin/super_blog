Rails.application.routes.draw do
  # get 'sessions/new'
  
  # get 'posts/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users, only: [:new, :create]

  resources :posts do
    resources :comments, only: [:create]
  end  
end