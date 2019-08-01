Rails.application.routes.draw do
  get 'users/index'
  # get 'posts/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  resources :posts

  resources :users, only: [:new, :create]
end