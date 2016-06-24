Rails.application.routes.draw do

  get 'login', to: 'sessions#new'

  resources :cartoons
  root 'cartoons#index'

  resources :users, only: [:index, :new, :create, :destroy]

  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
