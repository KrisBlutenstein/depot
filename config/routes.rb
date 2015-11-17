Rails.application.routes.draw do
  resources :products, only: :index

  resource :user
  resource :session, only: [:new, :create, :destroy]

  root 'products#index'

  resources :users do
    get :confirm, on: :member
  end

  namespace :admin do
    resources :products, only: :index
  end
end
