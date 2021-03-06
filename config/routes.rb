Rails.application.routes.draw do

root 'products#index'

  resources :products do
    resources :reviews, only: [:show, :create, :destroy]
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
