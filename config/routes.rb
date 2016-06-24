Rails.application.routes.draw do

  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'

  resources :cartoons
  root 'sessions#new'

  resources :users, only: [:index, :new, :create, :destroy]

  resources :sessions, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
